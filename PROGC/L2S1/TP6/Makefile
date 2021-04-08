#makefile pile dynamique
CC = cc
CFLAGS =-Wall -g

EXECS = \
	exo1 \
	exo2

all : $(EXECS)

clean:
	rm -rf $(EXECS) *.o

exo1: exo1.o lib.o
	$(CC) -o $@ $^ $(CFLAGS)

exo2: exo2.o pile.o lib.o
	$(CC) -o $@ $^ $(CFLAGS)

pile.o: pile.h
lib: lib.h

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
