#include <omp.h>
#include <stdio.h>
#include <stdlib.h>

#define NUM_STEPS 10
#define NUM_OPS 10

int main(){
  int num = 0;
  #pragma omp parallel for num_threads(4)
  for (int i=0 ; i<NUM_STEPS ; i++){
    for (int j=0 ; j<NUM_OPS ; j++)
    #pragma omp critical
      num++;
    for (int j=0 ; j<NUM_OPS ; j++)
    #pragma omp critical
      num--;
  }
  printf("num = %d\n", num);
}