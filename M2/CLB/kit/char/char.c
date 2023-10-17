#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>

static char *name = "world";
module_param(name, charp, S_IRUGO);
MODULE_PARM_DESC(name, "Chose à saluer");

static dev_t dev;
static struct cdev *my_cdev;

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
	size_t to_copy = min(len, strlen(name));

	if (copy_to_user(b, name, to_copy) == 0) {
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
	if (alloc_chrdev_region(&dev, 0, 1, "simple-char") == -1) {
		printk(KERN_ALERT "alloc_chrdev_region()\n");
		return -EINVAL;
        }

	printk(KERN_DEBUG "Allocated (major, minor) = (%d, %d)\n", MAJOR(dev), MINOR(dev));

	my_cdev = cdev_alloc();
	my_cdev->ops = &fops;
	my_cdev->owner = THIS_MODULE;

	cdev_add(my_cdev, dev, 1);

	return 0;
}

static __exit void char_cleanup(void)
{
	unregister_chrdev_region(dev, 1);
	cdev_del(my_cdev);
}

module_init(char_init);
module_exit(char_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alban Gruin");
MODULE_DESCRIPTION("Simple char device");
