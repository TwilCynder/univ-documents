CC = gcc
CFLAGS = -Wall -Werror -g

EXECS = exo8

all : $(EXECS)

exo8: exo8.o
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
