
CC = cc
CFLAGS =-Wall -g


exo2: exo2.o pile.o
	$(CC) -o $@ $^ $(CFLAGS)

exo1: exo1.o hanoi.o pile.o
	$(CC) -o $@ $^ $(CFLAGS)

pile.o: pile.h
hanoi.o : hanoi.h pile.h

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
