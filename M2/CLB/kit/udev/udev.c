#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/version.h>

static char *name = "world";
module_param(name, charp, S_IRUGO);
MODULE_PARM_DESC(name, "Chose à saluer");

static dev_t dev;
static struct cdev *my_cdev;
static struct class *my_class;

static int openchar(struct inode *inode, struct file *file)
{
	return 0;
}

static int releasechar(struct inode *inode, struct file *file)
{
	return 0;
}

static ssize_t readchar(struct file *filp, char *b, size_t len, loff_t *offset)
{
	size_t to_copy = min(len, strlen(name) - (size_t) *offset);

	if (to_copy == 0) {
		return 0;
	} else if (copy_to_user(b, name + *offset, to_copy) == 0) {
		*offset += to_copy;
		return to_copy;
	} else {
		return -EFAULT;
	}
}

static ssize_t writechar(struct file *filp, const char *b, size_t len, loff_t *offset)
{
	return -ENOSPC;
}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = openchar,
	.release = releasechar,
	.read = readchar,
	.write = writechar
};

static __init int char_init(void)
{
	int err;
	struct device *my_device;

	if (alloc_chrdev_region(&dev, 0, 1, "simple-char") == -1) {
		printk(KERN_ALERT "alloc_chrdev_region()\n");
		return -EINVAL;
	}

	/* Ne faites pas ça, mettez la version qui marche sur votre machine
	 * virtuelle ou votre Raspberry Pi. */
#if LINUX_VERSION_CODE < KERNEL_VERSION(6, 4, 0)
	my_class = class_create(THIS_MODULE, "chardev");
#else
	my_class = class_create("chardev");
#endif
	/* Vous avez lu le commentaire au dessus ? */

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
							  NULL, "chardev");
	if (IS_ERR(my_device)) {
		printk(KERN_ALERT "device_create() failed\n");
		err = PTR_ERR(my_device);
		goto error;
	}

	return 0;

error:
	cdev_del(my_cdev);
error_destroy:
	class_destroy(my_class);
error_unregister:
	unregister_chrdev_region(dev, 1);

	return err;
}

static __exit void char_cleanup(void)
{
	device_destroy(my_class, MKDEV(MAJOR(dev), MINOR(dev)));
	cdev_del(my_cdev);
	class_destroy(my_class);
	unregister_chrdev_region(dev, 1);
}

module_init(char_init);
module_exit(char_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alban Gruin");
MODULE_DESCRIPTION("Simple char device using udev");
