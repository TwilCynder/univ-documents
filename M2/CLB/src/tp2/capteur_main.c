#include <linux/init.h>
#include <linux/module.h>
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

u8 recv_buffer[DS18B20_NUM_REGS];
char output_buffer[10];
u8 output_buffer_length;

u16 last_temp; //last temperature as read from the buffer
u8 current_resolution = 3;

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


	while (frac > 0){
	
		frac *= 10;
		add_char(&buffer, '0' + (frac >> (current_resolution + 1)));
		frac &= frac_mask;
	}


	add_char(&buffer, ' ');
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

static ssize_t read(struct file *filp, char *b, size_t len, loff_t *offset)
{
    onewire_reset();
	convert_temp();
	msleep(750);
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
	if (copy_to_user(b, output_buffer, output_buffer_length)) return -EFAULT;

	return output_buffer_length;
}

static void set_resolution(u8 res){
	current_resolution = res;

	onewire_reset();
	onewire_write_u8(0xCC);
	onewire_write_u8(0x4E);
	onewire_write_u8(0); //TH (osef)
	onewire_write_u8(0); //TL (osef)	
	onewire_write_u8(CONTROL_REG_BASE + ((res & 3) << CONTROL_REG_RES_BIT0));
	onewire_write_u8(0x48);

}

static ssize_t write(struct file *filp, const char *b, size_t len, loff_t *offset)
{
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

static __init int capteur_init(void)
{

	int err;
	struct device *my_device;

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

	err = init_base_ds18b20(17, my_device);
	if (err != 0) goto error;

	u64* roms = NULL;
    int res, retries = 0;

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

    printk(KERN_DEBUG "Allocated (major, minor) = (%d, %d)\n", MAJOR(dev), MINOR(dev));

	return 0;


error_pin:
	deinit_base_ds18b20();

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
