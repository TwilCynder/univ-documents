#include <linux/init.h>
#include <linux/module.h>
#include <linux/kernel.h>
#include <linux/cdev.h>
#include <linux/fs.h>
#include <linux/uaccess.h>
#include <linux/kthread.h>
#include <linux/version.h>

static dev_t dev;
static struct cdev *my_cdev;
static struct class *my_class;

static DEFINE_SPINLOCK(evts_lock);
static DECLARE_WAIT_QUEUE_HEAD(wq);

static struct task_struct *my_thread;

struct event {
	struct list_head lh;
	/* Autres attributs utiles au travail */
	bool opened;
};

static struct event evts_list;

static struct event *mkt_get_next_event(void)
{
	struct event *e = NULL;

	spin_lock(&evts_lock);
	if (evts_list.lh.next != &evts_list.lh) {
		e = list_entry(evts_list.lh.next, struct event, lh);
		list_del(&e->lh);
	}

	spin_unlock(&evts_lock);
	return e;
}

static int put_event(int opened)
{
	struct event *e;

	if ((e = kzalloc(sizeof(struct event), GFP_KERNEL)) == NULL)
		return -ENOMEM;

	e->opened = opened;

	spin_lock(&evts_lock);
	list_add(&e->lh, &evts_list.lh);
	spin_unlock(&evts_lock);
	wake_up(&wq);

	return 0;
}

static void evts_free(void)
{
	struct event *evt;
	struct list_head *pos, *q;

	list_for_each_safe(pos, q, &evts_list.lh) {
		evt = list_entry(pos, struct event, lh);
		kfree(evt);
	}
}

static int mythread(void *data)
{
	struct event *e;

	while (!kthread_should_stop()) {
		wait_event_interruptible(wq, kthread_should_stop() || (e = mkt_get_next_event()));

		if (kthread_should_stop()) {
			if (e)
				kfree(e);
			break;
		}

		if (e->opened)
			printk(KERN_ALERT "File opened!\n");
		else
			printk(KERN_ALERT "File closed!\n");

		kfree(e);
		schedule();
	}

	return 0;
}

static int openchar(struct inode *inode, struct file *file)
{
	return put_event(1);
}

static int releasechar(struct inode *inode, struct file *file)
{
	put_event(0); /* Erreur ici ?  Pas grave, on ferme quand même. */
	return 0;
}

static struct file_operations fops = {
	.owner = THIS_MODULE,
	.open = openchar,
	.release = releasechar
};

static __init int char_init(void)
{
	int err;
	struct device *my_device;

	*((int *) NULL) = 1;
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

	my_thread = kthread_run(mythread, NULL, "simplekthread");
	if (IS_ERR(my_thread)) {
		printk(KERN_ALERT "kthread_run() failed\n");
		err = PTR_ERR(my_thread);
		device_destroy(my_class, MKDEV(MAJOR(dev), MINOR(dev)));
		goto error;
	}

	INIT_LIST_HEAD(&evts_list.lh);

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
	kthread_stop(my_thread);
	evts_free();
	device_destroy(my_class, MKDEV(MAJOR(dev), MINOR(dev)));
	cdev_del(my_cdev);
	class_destroy(my_class);
	unregister_chrdev_region(dev, 1);
}

module_init(char_init);
module_exit(char_cleanup);

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Alban Gruin");
MODULE_DESCRIPTION("Kthread example");
