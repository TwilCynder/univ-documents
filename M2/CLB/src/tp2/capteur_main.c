#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/ioctl.h>
#include <linux/delay.h>

#include "base_ds18b20.h"

static dev_t dev;
static struct cdev *my_cdev;
static struct class *my_class; 

u8 buffer[DS18B20_NUM_REGS];

static int open(struct inode *inode, struct file *file)
{
	return 0;
}

static int release(struct inode *inode, struct file *file)
{
	return 0;
}

static u8 check_crc(void){
	u8 crc = onewire_crc8(buffer, DS18B20_REG_CRC);
	printk(KERN_DEBUG "CRC calcule : %d | lu : %d\n", crc, buffer[DS18B20_REG_CRC]);
	return crc == buffer[DS18B20_REG_CRC];
}

static void convert_temp(void){
	onewire_write_u8(0xCC);
	onewire_write_u8(0x44);
}

static void updateBuffer(void){
	onewire_write_u8(0xCC);
	onewire_write_u8(0xBE);
	for (int i = 0; i < DS18B20_NUM_REGS; i++){
		buffer[i] = onewire_read_byte();
	}
	check_crc();
}

static void read_temp(void){
	convert_temp();
	usleep_range(750, 780);
	updateBuffer();
}

static ssize_t read(struct file *filp, char *b, size_t len, loff_t *offset)
{
	onewire_reset();
    read_temp();
	printk(KERN_DEBUG "Read : %d\n", *(uint16_t*)buffer);
	return 0;
}

static ssize_t write(struct file *filp, const char *b, size_t len, loff_t *offset)
{
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
