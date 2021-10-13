CC=gcc
CFLAGS=-Wall -Werror -g -O3

EXECS=stack_ex1

NDEBUG=

ifeq ($(DEBUG),yes)
	CFLAGS += -g
	LDFLAGS =
else
	CFLAGS += -O3 -DNDEBUG
	LDFLAGS =
endif

all : $(EXECS)

stack_ex1: main.o staticstack.o
	$(CC) -o $@ $^ $(CFLAGS)

doc: main.c stack.h
	doxygen  documentation/TP1

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXECS)

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
