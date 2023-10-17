#include <stdio.h>
#include <stdlib.h>

#include <fcntl.h>
#include <string.h>
#include <unistd.h>

#include <sys/ioctl.h>
#include <sys/types.h>
#include <sys/stat.h>

#define BUFFER_IOCTL_MAGIC 'x'
#define BUFFER_IOCTL_STRLEN _IOR(BUFFER_IOCTL_MAGIC, 0, int)

int main() {
	int fd = open("/dev/chardev", O_RDWR), res;
	size_t sz;

	if (fd < 0) {
		perror("open()");
		return EXIT_FAILURE;
	}

	if ((res = ioctl(fd, BUFFER_IOCTL_STRLEN, &sz)) != 0) {
		perror("ioctl()");
		return EXIT_FAILURE;
	}

	printf("bufsize: %lu\n", sz);

	close(fd);

	return EXIT_SUCCESS;
}
