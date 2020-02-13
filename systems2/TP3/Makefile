CC = gcc
CFLAGS = -Wall -Werror -g

EXECS = exo4 exo5

all : $(EXECS)

exo4: exo4.o term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

exo5: exo5.c term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
