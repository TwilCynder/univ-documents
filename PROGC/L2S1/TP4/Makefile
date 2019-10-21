#makefile pile dynamique
CC = cc
CFLAGS =-Wall -g

EXECS = exo1


exo1: exo1.o
	$(CC) -o $@ $^ $(CFLAGS)


pile.o: pile.h
hanoi.o : hanoi.h pile.h

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
