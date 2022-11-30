CC = gcc
CFLAGS = -Wall -Werror -g

EXECS = exo8 exo9 exo10

all : $(EXECS)

exo8: exo8.o creation.o
	$(CC) -o $@ $^ $(CFLAGS)

exo9: exo9.o consultation.o
	$(CC) -o $@ $^ $(CFLAGS)

exo10: exo10.o creation.o consultation.o
	$(CC) -o $@ $^ $(CFLAGS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
