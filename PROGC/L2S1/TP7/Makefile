#makefile pile dynamique
CC = cc
CFLAGS =-Wall -g

EXECS = \
	test-pile \
	verif-parent \
	somme

merge-recursive: mergeRecursive.o mergeSort.o
	$(CC) -o $@ $^ $(CFLAGS)

merge-iterative: mergeIterative.o mergeSort.o pile.o
	$(CC) -o $@ $^ $(CFLAGS)


mergeSort.o: mergeSort.h
pile.o: pile.h

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)
