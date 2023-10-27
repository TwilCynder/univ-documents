#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

static char text[] = "SECIL";
static size_t text_size = (sizeof(text) /sizeof(char)) - 1;
static char* end = text + (sizeof(text) /sizeof(char)) - 1;

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

static char* str_ptr = text;
static int current_pos = 0;
static ssize_t readchar(struct file *filp, char *b, size_t len, loff_t *offset)
{
	printk(KERN_DEBUG "LENGTH %d", len);

	int remaining_len = len;
	int output_offset = 0;

	while (remaining_len > text_size - current_pos){
		if (copy_to_user(b + output_offset, str_ptr, text_size - current_pos)) return -EFAULT;
		output_offset += text_size - current_pos;
		remaining_len -= text_size - current_pos;
	}

    if (copy_to_user(b + output_offset, str_ptr, remaining_len)) return -EFAULT;
	current_pos += remaining_len;

	return remaining_len;
}

static ssize_t writechar(struct file *filp, const char *b, size_t len, loff_t *offset)
{
	return -ENOSPC;
}

#define IOCTL_RESET _IOC(_IOC_NONE, 'x', 0, 0)
static long my_ioctl (struct file *filp, unsigned int command, unsigned long arg	) {
	switch(command) {
    	case IOCTL_RESET:
			str_ptr = text;
			break;
		default:
        	return -ENOTTY;
	}
	return 0;
}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = openchar,
	.release = releasechar,
	.read = readchar,
	.write = writechar,
	.unlocked_ioctl = my_ioctl
};

static __init int char_init(void)
{

	int err;
	struct device *my_device;

	if (alloc_chrdev_region(&dev, 0, 1, "simple-char") == -1) {
		printk(KERN_ALERT "alloc_chrdev_region()\n");
		return -EINVAL;
	}
	// allocation du device 
	my_class = class_create(THIS_MODULE,"tp1-chardev-secil");

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
							  NULL, "tp1-chardev-secil");
	if (IS_ERR(my_device)) {
		printk(KERN_ALERT "device_create() failed\n");
		err = PTR_ERR(my_device);
		goto error;
	}

    printk(KERN_DEBUG "Allocated (major, minor) = (%d, %d)\n", MAJOR(dev), MINOR(dev));

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
MODULE_DESCRIPTION("Simple char device");
