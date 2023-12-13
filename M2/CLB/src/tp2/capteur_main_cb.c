#include <linux/init.h>
#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/ioctl.h>
#include <linux/delay.h>
#include <linux/kstrtox.h>

#include "base_ds18b20.h"

#define FIRST_INTEGER_BIT 4
#define LAST_INTEGER_BIT 10
#define SIGN_BIT 15
#define CONTROL_REG_BASE 0b00011111
#define CONTROL_REG_RES_BIT0 5

#define SIGN_BIT_MASK (1 << SIGN_BIT)
#define WHOLE_PART_MASK ((1 << (LAST_INTEGER_BIT - FIRST_INTEGER_BIT + 1)) - 1)
#define FRAC_PART_MASK ((1 << FIRST_INTEGER_BIT) - 1)

static dev_t dev;
static struct cdev *my_cdev;
static struct class *my_class; 
static struct device *my_device;

u16 last_temp; //last temperature as read from the buffer
u8 current_resolution = 3;

//sert à voir si le onewire a déjà été initialisé, pour savoir si il faut faire un changement de pin dans pin_set (et appelet la fonction d'initialisation onewire)
enum State {
	WAITING, //on va initialiser, donc pour l'instant on peut juste attendre
	INITIALIZED, //en fonctionnement a priori, un pin est alloué et utilisé
	UNINIT //déconnecté, on a proablement essayé d'initialiser sans succès
} state = WAITING;

//bus_pin commence à -1, ce qui signifie pas set. Pas d'init tant que bus_pin == -1
static int bus_pin = -1;

static void change_resolution(u8 resolution);
//callback pour gérer les changements de valeur de bus_pin
static int pin_set(const char *val, const struct kernel_param *kp)
{
	printk(KERN_ALERT "PIN SET ========\n");
	int n = 0, ret;

	ret = kstrtoint(val, 10, &n);
	if (ret != 0 || n < 0 || n > 31) return -EINVAL;

	switch (state){
		case INITIALIZED: //Il y a déjà une pin allouée, on la clear
			deinit_base_ds18b20();
		case UNINIT:	//On est dans un état "idle", aucune pin n'a pu être allouée

			init_base_ds18b20(bus_pin, my_device);
			change_resolution(current_resolution);
			printk(KERN_ALERT "INIT FROM PIN SET ========\n");
	}

	return param_set_int(val, kp);
}

static const struct kernel_param_ops param_ops = {
	.set	= pin_set,
	.get	= param_get_int,
};

module_param_cb(bus_pin, &param_ops, &bus_pin, 0664);
MODULE_PARM_DESC(bus_pin, "GPIO pin to use");

const char* uninit_error = "Error : no pin set. Please set the bus_pin module parameter";
const size_t uninit_error_length = (sizeof(uninit_error) /sizeof(char)) - 1;

u8 recv_buffer[DS18B20_NUM_REGS];
char output_buffer[10];
u8 output_buffer_length;

static int open(struct inode *inode, struct file *file)
{
	return 0;
}

static int release(struct inode *inode, struct file *file)
{
	return 0;
}

static void add_char(char** buffer, char character){
  *((*buffer)++) = character;  //god i love pointer shenanigans 
}

static char* temp_to_string(char* buffer, u16 temp, u8 resolution){
	if (temp & SIGN_BIT_MASK) {
		add_char(&buffer, '-');
	}
	u16 whole = (temp >> FIRST_INTEGER_BIT) & WHOLE_PART_MASK;

	u8 invres = 3 - current_resolution;
	u16 frac_mask = (current_resolution >= 3) ? FRAC_PART_MASK : FRAC_PART_MASK & ~((1 << invres) - 1);

	u16 frac = (temp & frac_mask) >> invres;

	printk(KERN_DEBUG "%d %d %d %d\n", FRAC_PART_MASK, frac_mask, invres, ~((1 << invres) - 1));
	printk(KERN_DEBUG "Whole : %d | Frac : %d\n", whole, frac);

	//could use snprintf but would be a waste
	if (whole > 99) {
		add_char(&buffer, '0' + (whole / 100));
		whole %= 100;
	}
	if (whole > 9) {
		add_char(&buffer, '0' + (whole / 10));
		whole %= 10;
	}
	add_char(&buffer, '0' + whole);

	add_char(&buffer, '.');


	if (frac == 0){
		add_char(&buffer, '0');
	} else {
		do {
			frac *= 10;
			add_char(&buffer, '0' + (frac >> (current_resolution + 1)));
			frac &= (frac_mask >> invres);
		} while (frac > 0);
	}

	add_char(&buffer, ' '); //correctness char
	add_char(&buffer, '\n');

	return buffer;
}

static u8 check_crc(void){
	u8 crc = onewire_crc8(recv_buffer, DS18B20_REG_CRC);
	printk(KERN_DEBUG "CRC calcule : %d | lu : %d\n", crc, recv_buffer[DS18B20_REG_CRC]);
	return crc == recv_buffer[DS18B20_REG_CRC];
}

static void convert_temp(void){
	onewire_write_u8(0xCC);
	onewire_write_u8(0x44);
}

static void updateBuffer(void){
	onewire_write_u8(0xCC);
	onewire_write_u8(0xBE);
	for (int i = 0; i < DS18B20_NUM_REGS; i++){
		recv_buffer[i] = onewire_read_byte();
	}
}

static void set_correctness_char(char character){
	output_buffer[output_buffer_length - 2] = character;
}

static ssize_t send_uninint_error(char *b, size_t len){
	if (len > uninit_error_length){
		len = uninit_error_length;
	}

	if (copy_to_user(b, uninit_error, len)) return -EFAULT;

	return len;
}

static ssize_t read(struct file *filp, char *b, size_t len, loff_t *offset)
{
	printk(KERN_DEBUG "Current resolution : %d\n", current_resolution);

	if (state != INITIALIZED){
		return send_uninint_error(b, len);
	}

    onewire_reset();
	convert_temp();
	msleep(ds18b20_conv_time[current_resolution]);
	onewire_reset();
	updateBuffer();
	printk(KERN_DEBUG "Read : %d\n", *(uint16_t*)recv_buffer);
	u8 crc_correct = check_crc();
	if (crc_correct){
		if (*(uint16_t*)recv_buffer != last_temp){
			last_temp = *(uint16_t*)recv_buffer;
			output_buffer_length = temp_to_string(output_buffer, last_temp, current_resolution) - output_buffer;
		} else {
			set_correctness_char(' ');
		}
	} else {
		set_correctness_char('*');
	}

	if (len > output_buffer_length){
		len = output_buffer_length;
	}

	if (copy_to_user(b, output_buffer, len)) return -EFAULT;

	return len;
}

static void change_resolution(u8 res){
	printk(KERN_DEBUG "Change resolution : %d\n", res);
	onewire_reset();
	onewire_write_u8(0xCC);
	onewire_write_u8(0x4E);
	onewire_write_u8(0); //TH (osef)
	onewire_write_u8(0); //TL (osef)	
	onewire_write_u8(CONTROL_REG_BASE + ((res & 3) << CONTROL_REG_RES_BIT0));

	onewire_reset();
	onewire_write_u8(0xCC);
	onewire_write_u8(0x48);
}

static void set_resolution(u8 res){
	current_resolution = res;
	change_resolution(res);
}

static ssize_t write(struct file *filp, const char *b, size_t len, loff_t *offset)
{
	if (state != INITIALIZED){
		return 0;
	}

	u8 res = simple_strtol(b, NULL, 10);

	printk(KERN_DEBUG "Write %s %d", b, (int)res);

	if (res < 1 || res > 4) return len; //si l'entrée n'a pas donné une résolution valide (en nombre de bits), on ne fait rien
	
	set_resolution(res - 1);

	return len;

}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = open,
	.release = release,
	.read = read,
	.write = write
};

void init_onewire(void){
	
}

static __init int capteur_init(void)
{

	int err;

	if (alloc_chrdev_region(&dev, 0, 1, "ds18b20") == -1) {
		printk(KERN_ALERT "alloc_chrdev_region()\n");
		return -EINVAL;
	}
	// allocation du device 
	my_class = class_create(THIS_MODULE,"sds18b20");

	/* Gestion de l'erreur inspirée de arch/mips/kernel/mips-mt.c */
	if (IS_ERR(my_class)) {
		printk(KERN_ALERT "class_create() failed\n");
		err = PTR_ERR(my_class);
		goto error_unregister;
	}

	if (!(my_cdev = cdev_alloc())) {
		printk(KERN_ALERT "cdev_alloc() failed\n");
		err = -ENOMEM;
		goto error_destroy;
	}

	my_cdev->ops = &fops;
	my_cdev->owner = THIS_MODULE;

	if ((err = cdev_add(my_cdev, dev, 1))) {
		printk(KERN_ALERT "cdev_add() failed\n");
		goto error;
	}

	my_device = device_create(my_class, NULL,
							  MKDEV(MAJOR(dev), MINOR(dev)),
							  NULL, "ds18b20-0");
	if (IS_ERR(my_device)) {
		printk(KERN_ALERT "device_create() failed\n");
		err = PTR_ERR(my_device);
		goto error;
	}

	printk(KERN_DEBUG "Pin : %d\n", bus_pin);

	if (bus_pin < 0) {
		state = UNINIT;
	} else {
		err = init_base_ds18b20(bus_pin, my_device);
		if (err != 0) {
			state = UNINIT;
		} else {
			state = INITIALIZED;
			//on remet la résolution au max (ou en tout cas la valeur initiale de la résolution, décidée à l'initialisation de current_resolution)
			change_resolution(current_resolution);
		}
	}


	//Partie recherche de capteur; inutilisée car on reste sur la partie 1 (un seul capteur)
	/*
	u64* roms = NULL;
    int res, retries = 0;

	onewire_reset();

    do {
        res = ds18b20_search(&roms);
    } while (retries++ < NUM_RETRIES && res == -EAGAIN);


	if (err != 0) {
		printk(KERN_ALERT "Failed to search for sensors\n");
		goto error_pin;
	}

	if (roms == NULL){
		printk(KERN_ALERT "No sensor found\n");
		goto error_pin;
	}

	while (*roms){
		printk(KERN_DEBUG "Found sensor : %llu\n", *roms);
		roms++;
	}

		*/

    printk(KERN_DEBUG "Allocated (major, minor) = (%d, %d)\n", MAJOR(dev), MINOR(dev));

	return 0;

error:
	cdev_del(my_cdev);
error_destroy:
	class_destroy(my_class);
error_unregister:
	unregister_chrdev_region(dev, 1);

	printk(KERN_DEBUG "Aaaaand we dead\n");

	return err;

}

static __exit void capteur_cleanup(void)
{
	if (state == INITIALIZED)
		deinit_base_ds18b20();
	device_destroy(my_class, MKDEV(MAJOR(dev), MINOR(dev)));
	cdev_del(my_cdev);
	class_destroy(my_class);
	unregister_chrdev_region(dev, 1);
}

module_init(capteur_init);
module_exit(capteur_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Téo Tinarrage");
MODULE_DESCRIPTION("DS18B20");
