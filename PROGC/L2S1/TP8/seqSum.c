#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define NMAX 20

typedef int Tab[NMAX];

int weight(Tab T, int first, int last){
  int sum = 0;
  for (int i = first; i <= last; i++){
    sum += T[i];
  }
  return sum;
}

int naiveWeak(Tab T, int N, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < N; f++){
    for (int l = f; l < N; l++){
      w = weight(T, f, l);
      if (w > max){
        max = w;
        max_f = f;
        max_l = l;
      }
    }
  }
  *first = max_f;
  *last = max_l;
  return max;
}

int naiveStrong(Tab T, int N, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < N; f++){
    w = 0;
    for (int l = f; l < N; l++){
      w += T[l];
      if (w > max){
        max = w;
        max_f = f;
        max_l = l;
      }
    }
  }
  *first = max_f;
  *last = max_l;
  return max;
}

int dynamic(Tab T, int N, int* first, int* last){
  int i;
  for (int first = 0; first < N; first++){

  }
}

int chrono(void (*f)(Tab, int, int*, int*), Tab T, int size){
  clock_t tStart = clock();
  f();
  clock_t tEnd = clock();
  printf("temps CPU : %.2f secondes\n",(double)(fin-debut)/CLOCKS_PER_SEC);
}

void randomizeTab(Tab T, int size){
    for (int i = 0; i < size; i++){
        T[i] = (rand() % 20) - 10;
    }
}

int main(int argc, char const *argv[]) {
  /* code */
  return 0;
}
