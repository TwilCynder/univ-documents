#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/delay.h>
#include <linux/gpio/consumer.h>
#include <linux/gpio/machine.h>

static int mode = 1;

static int bus_pin = 17;
module_param(bus_pin, int, 0444);

static dev_t dev;
static struct cdev *my_dev;
static struct class *dev_class;
static struct gpio_desc *busdesc;

static int open_dev(struct inode *inode, struct file *filp)
{
	gpiod_set_value(busdesc, mode);
	mode = !mode;
	return 0;
}

static int release_dev(struct inode *inode, struct file *filp)
{
	return 0;
}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = open_dev,
	.release = release_dev
};

static struct gpiod_lookup_table gpios_table = {
	.dev_id = "tgpiod0",
	.table = {
		GPIO_LOOKUP("pinctrl-bcm2835", 17, "tgpiodbus", GPIO_ACTIVE_HIGH),
		{ },
	},
};

static int __init tgpiod_init(void)
{
	int res;
	struct device *temp_device;

	gpios_table.table[0].chip_hwnum = bus_pin;

	if (alloc_chrdev_region(&dev, 0, 1, "tgpiod") == -1) {
		printk(KERN_ALERT "alloc_chrdev_region()\n");
		return -EINVAL;
	}

	dev_class = class_create(THIS_MODULE, "tgpiod");
	if (IS_ERR(dev_class)) {
		printk(KERN_ALERT "class_create()\n");
		res = PTR_ERR(dev_class);
		goto error_class;
	}

	if (!(my_dev = cdev_alloc())) {
		printk(KERN_ALERT "cdev_alloc()\n");
		res = -ENOMEM;
		goto error_cdev;
	}

	my_dev->ops = &fops;
	my_dev->owner = THIS_MODULE;

	if ((res = cdev_add(my_dev, dev, 1))) {
		printk(KERN_ALERT "cdev_add()\n");
		goto error_device;
	}

	gpiod_add_lookup_table(&gpios_table);
	temp_device = device_create(dev_class, NULL, MKDEV(MAJOR(dev), MINOR(dev)), NULL, "tgpiod0");
	if (IS_ERR(temp_device)) {
		printk(KERN_ALERT "device_create()\n");
		gpiod_remove_lookup_table(&gpios_table);
		res = PTR_ERR(temp_device);
		goto error_device;
	}

	busdesc = gpiod_get(temp_device, "tgpiodbus", GPIOD_OUT_LOW);
	if (!IS_ERR(busdesc))
		return 0;

	printk(KERN_ALERT "gpiod_get()\n");
	device_destroy(dev_class, MKDEV(MAJOR(dev), MINOR(dev)));
	gpiod_remove_lookup_table(&gpios_table);
	res = PTR_ERR(busdesc);

error_device:
	cdev_del(my_dev);
error_cdev:
	class_destroy(dev_class);
error_class:
	unregister_chrdev_region(dev, 1);
	return res;
}

static void __exit tgpiod_cleanup(void)
{
	gpiod_set_value(busdesc, 0);

	gpiod_put(busdesc);
	device_destroy(dev_class, MKDEV(MAJOR(dev), MINOR(dev)));
	gpiod_remove_lookup_table(&gpios_table);
	cdev_del(my_dev);
	class_destroy(dev_class);
	unregister_chrdev_region(dev, 1);
}

module_init(tgpiod_init);
module_exit(tgpiod_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alban Gruin");
MODULE_DESCRIPTION("GPIO API test");
