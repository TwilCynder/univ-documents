#makefile pile dynamique
CC = cc
CFLAGS =-Wall -g

EXECS = \
	exo1 \
	exo2

all : $(EXECS)

clean:
	rm -rf $(EXECS) *.o

exo1: exo1.o pile.o hanoi.o
	$(CC) -o $@ $^ $(CFLAGS)

exo2: exo2.o pile.o hanoi.o
	$(CC) -o $@ $^ $(CFLAGS)

pile.o: pile.h
hanoi.o: hanoi.h pile.h

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
