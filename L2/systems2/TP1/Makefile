CC = gcc
CFLAGS =-Wall -Werror

exo1: exo1.o
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
