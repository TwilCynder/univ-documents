#include <stdlib.h>
#include <stdio.h>

int* repArray(int arr[],  int n){
  int* newVec = (int*)malloc(5 * n * sizeof(int));

  if (newVec == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }

  for (int i = 0; i < n; i++){
    for (int  j = 0; j < 5; j++){
      newVec[5 * i + j] = arr[j];
    }
  }
  return newVec;
}

int getN(){
  int n = 0;
  scanf("%d", &n);
  printf("\n");
  return n;
}

void viewArray(int arr[], int size){
  for (int i = 0; i < size; i++ ){
    printf("%d\n", arr[i]);
  }
}

int main(int argc, char const *argv[]) {
  int T1[5] = {2, 5, 8, 9, 33};
  int n = getN();
  int* T2 = repArray(T1, n);
  viewArray(T2, n * 5);
  return 0;
}
