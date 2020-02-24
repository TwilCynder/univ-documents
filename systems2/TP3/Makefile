CC = gcc
CFLAGS = -Wall -Werror -g

EXECS = exo4 exo5 exo6

all : $(EXECS)

exo4: exo4.o term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

exo5: exo5.c term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

exo6: exo6.c term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

exo7: exo7.c term_mode.o
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
