
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>

int main(int argc, char **argv){
  if (argc < 2){
    printf("Usage: <filename>\n");
    exit(-1);
  }
  int size;
  unsigned int *vec;
  FILE *f = fopen(argv[1],"r");
  fscanf(f,"%d\n",&size);
  size = 1 << size;
  if (size >= (1 << 20)){
    printf("Size (%u) is too large: size is limited to 2^20\n",size);
    exit(-1);
  }
   vec = (unsigned int *) malloc(size * sizeof(unsigned int)); assert(vec);
  for (int i=0; i<size; i++){
    fscanf(f, "%u\n",&(vec[i]));
  }
  unsigned int sum = 0;
  for (int i=0; i<size; i++){
    sum += vec[i];
  }
  printf("sum = %u\n", sum);
  fclose(f);
}
