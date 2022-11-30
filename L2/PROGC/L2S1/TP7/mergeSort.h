#include <assert.h>
#include <stdlib.h>
#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdbool.h>

#define TMAX_S 20
#define TMAX_L 300000

bool checkMerged(int T[], int p, int d);
void merge(int T[], int p1, int d1, int p2, int d2, int M[]);
void randomizeTab(int T[], int size, int maxVal);
void readArrayFromFile(int T[], char* fileName);
void viewTab(int T[], int size);
void test_S(void (*mergeFunction)(int[], int, int[]));
void test_L(void (*mergeFunction)(int[], int, int[]));
