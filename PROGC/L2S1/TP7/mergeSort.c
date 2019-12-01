#include "mergeSort.h"

bool checkMerged(int T[], int p, int d){
  for (int i = p; i < d ;i++){
    if (T[i] > T[i + 1]){
      fprintf(stderr, "%d > %d !", T[i], T[i + 1]);
      return false;
    }
  }
  return true;
}

void merge(int T[], int p1, int d1, int p2, int d2, int M[]){
    int i = p1;
    int j = p2;
    int k = 0;

    //precondition
    assert(checkMerged(T, p1, d1));
    assert(checkMerged(T, p2, d2));

    while (i <= d1 && j <= d2){
        if (T[i] < T[j]){
            M[k] = T[i];
            i += 1;
            k += 1;
            if (i > d1){
                while (j <= d2){
                    M[k] = T[j];
                    j += 1;
                    k += 1;
                }
            }
        } else {
            M[k] = T[j];
            j += 1;
            k += 1;
            if (j > d2){
                while (i <= d1){
                    M[k] = T[i];
                    i += 1;
                    k += 1;
                }
            }
        }
        assert(checkMerged(M, 0, k - 1));

    }

    memcpy(T + p1, M, sizeof(int) * k);

    assert(checkMerged(T, p1, d2));


    return;
}

void randomizeTab(int T[], int size, int maxVal){
    for (int i = 0; i < size; i++){
        T[i] = rand() % maxVal;
    }
}

void readArrayFromFile(int T[], char* fileName){
    int n;
    int i = 0;

    FILE* file;
    if ((file = fopen(fileName,"r")) == NULL){
       printf("Error! opening file");
       // Program exits if the file pointer returns NULL.
       exit(1);
    }

    while (!(fscanf(file, "%d", &n) == EOF)){
        T[i] = n;
        i += 1;
    }

    fclose(file);
}

void viewTab(int T[], int size){
  for (int i = 0; i < size; i++){
    printf("%d ", T[i]);
  }
  printf("\n");
}

void test_S(void (*mergeFunction)(int[], int, int[])){
    int T[TMAX_S];
    int M[TMAX_S];
    srand(time(NULL));

    randomizeTab(T, TMAX_S, 100);
    viewTab(T, TMAX_S);
    mergeFunction(T, TMAX_S, M);
    viewTab(T, TMAX_S);
}

void test_L(void (*mergeFunction)(int[], int, int[])){
    int T[TMAX_L];
    int M[TMAX_L];

    readArrayFromFile(T, "numbers");
    mergeFunction(T, TMAX_L, M);
    viewTab(T, TMAX_L);
}
