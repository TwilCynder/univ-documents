#include "mergeSort.h"

void mergeSortRecCall(int T[], int first, int last, int M[]){
    int mid;
    //fprintf(stderr, "%d %d\n", first, last);
    if (first < last){
        mid = ((first + last) / 2);
        mergeSortRecCall(T, first, mid, M);
        mergeSortRecCall(T, mid + 1, last, M);
        merge(T, first, mid, mid + 1, last, M);
    }
}

void mergeSortRecursive(int T[], int size, int M[]){
    mergeSortRecCall(T, 0, size - 1, M);
}

int main(int argc, char const *argv[]) {
  test_S(&mergeSortRecursive);
  return 0;
}
