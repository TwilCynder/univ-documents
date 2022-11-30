#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define NMAX 5000

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
  int max = 0;
  int first_temp = 0;
  Tab res;
  res[0] = T[0];
  for (int i = 1; i < N; i++){
    if (res[i - 1] > 0){
      res[i] = res[i - 1] + T[i];
    } else {
      res[i] = T[i];
      first_temp = i;
    }
    if (max < res[i]){
      max = res[i];
      *first = first_temp;
      *last = i;
    }
  }
return max;

}

void test_func(int (*f)(Tab, int, int*, int*), Tab T, int N){
  int a, b, res;
  clock_t tStart = clock();
  res = f(T, N, &a, &b);
  clock_t tEnd = clock();
  printf("temps CPU : %.2f secondes\n",(double)(tEnd-tStart)/CLOCKS_PER_SEC);
  printf("La séquence de poids maximal est [%d, %d], de poids %d\n", a, b, res);
}

void test_all(Tab T, int size){
  test_func(naiveWeak, T, size);
  test_func(naiveStrong, T, size);
  test_func(dynamic, T, size);
}

void test_arbitrary(){
    Tab T = {6, -1, 3, -10, 7};
    test_all(T, 5);
}

void randomizeTab(Tab T, int size){
    for (int i = 0; i < size; i++){
        T[i] = (rand() % 20) - 10;
    }
}

void test_random(){
  Tab T;
  randomizeTab(T, NMAX);
  test_all(T, NMAX);
}

int main(int argc, char const *argv[]) {
  test_random();
  return 0;
}
