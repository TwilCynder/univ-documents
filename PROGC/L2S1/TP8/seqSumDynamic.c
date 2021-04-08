//Usage : ./seqSumDynamic [taille_tableau]

/*
Ceci est le même TP, mais ave des tableaux dynamiques
Cela permet de lire N depuis un argument du programme,
sans toujours créer des tableaux de longueur NMAX pour n'en utiliser qu'une partie
*/

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

#define NMAX 2000

typedef struct{
  int* tab;
  int n;
} Tab;

Tab createTab(int size){
  Tab tab;
  tab.tab = (int*)malloc(sizeof(int) * size);
  tab.n = size;

  if (tab.tab == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }

  return tab;
}

int weight(Tab T, int first, int last){
  int sum = 0;
  for (int i = first; i <= last; i++){
    sum += T.tab[i];
  }
  return sum;
}

int naiveWeak(Tab T, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < T.n; f++){
    for (int l = f; l < T.n; l++){
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

int naiveStrong(Tab T, int* first, int* last){
  int w;
  int max = 0;
  int max_f, max_l;
  for (int f = 0; f < T.n; f++){
    w = 0;
    for (int l = f; l < T.n; l++){
      w += T.tab[l];
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

int dynamic(Tab T, int* first, int* last){
  int max = 0;
  int first_temp = 0;
  int* res = (int*)malloc(sizeof(int) * T.n);
  res[0] = T.tab[0];
  for (int i = 1; i < T.n; i++){
    if (res[i - 1] > 0){
      res[i] = res[i - 1] + T.tab[i];
    } else {
      res[i] = T.tab[i];
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

void test_func(int (*f)(Tab, int*, int*), Tab T){
  int a, b, res;
  clock_t tStart = clock();
  res = f(T, &a, &b);
  clock_t tEnd = clock();
  printf("temps CPU : %.2f secondes\n",(double)(tEnd-tStart)/CLOCKS_PER_SEC);
  printf("La séquence de poids maximal est [%d, %d], de poids %d\n", a, b, res);
}

void test_all(Tab T){
  test_func(naiveWeak, T);
  test_func(naiveStrong, T);
  test_func(dynamic, T);
}

void test_arbitrary(){
    int a[5] = {6, -1, 3, -10, 7};
    Tab T;
    T.tab = a; T.n = 5;
    test_all(T);
}

void randomizeTab(Tab T){
    for (int i = 0; i < T.n; i++){
        T.tab[i] = (rand() % 20) - 10;
    }
}

void test_random(int size){
  Tab T = createTab(size);
  randomizeTab(T);
  test_all(T);
}

int main(int argc, char const *argv[]) {
  int N;
  if (argc > 1 ){
    N = strtol(argv[1], NULL, 0);
  } else {
    N = NMAX;
  }

  test_random(N);
  return 0;
}
