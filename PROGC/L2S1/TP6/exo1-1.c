#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <time.h>
#include <assert.h>

#define N 10
#define VAL_MAX 20

typedef int tableau[N];

void swap(int* a, int* b){
  int c = *a;
  *a = *b;
  *b = c;
}

bool verif_partition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier){
  for (int i = ind_premier; i < ind_pivot; i++){
    if (T[i] > T[ind_pivot]){
      return false;
    }
  }
  for (int i = j + 1; i <= ind_dernier; i++){
    if (T[i] <= T[ind_pivot]){
      return false;
    }
  }
}

bool verif_precondition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier){
  return verif_partition(T, ind_premier, ind_pivot, j, ind_dernier) && !(ind_pivot > j || ind_dernier < j);
}

bool verif_invariant(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier){
  return verif_precondition(T, ind_premier, ind_pivot, j, ind_dernier) && ind_premier <= ind_pivot;
}

bool verif_postcondition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier){
  return verif_partition(T, ind_premier, ind_pivot, j, ind_dernier) && ind_pivot == j;
}

int partitionnerInv(tableau T, int ind_premier, int ind_dernier){
  int ind_pivot = ind_premier;
  int j = ind_dernier;

  assert(verif_precondition(T, ind_premier, ind_pivot, j, ind_dernier));

  while(ind_pivot < j){
    if (T[ind_pivot] >= T[ind_pivot + 1]){
      swap(T + ind_pivot, T + ind_pivot + 1);
      ind_pivot++;
    } else if (T[ind_pivot] < T[ind_pivot + 1]){
      swap(T + ind_pivot + 1, T + j);
      j--;
    }
    assert(verif_invariant(T, ind_premier, ind_pivot, j, ind_dernier));
  }
  assert(verif_postcondition(T, ind_premier, ind_pivot, j, ind_dernier));
  return ind_pivot;

}

void tri_rapide(tableau T, int ind_premier, int ind_dernier){
  int ind_pivot;
  if (ind_premier < ind_dernier){
    ind_pivot = partitionnerInv(T, ind_premier, ind_dernier);
    tri_rapide(T, ind_premier, ind_pivot - 1);
    tri_rapide(T, ind_pivot + 1, ind_dernier);
  }
}

void init_tab(tableau T){
  for (int i = 0; i < N; i++){
    T[i] = rand() % VAL_MAX;
  }
}

void aff_tableau(tableau T){
  for (int i = 0; i < N; i++){
    printf("%d ", T[i]);
  }
  printf("\n");
}

int main(int argc, char const *argv[]) {
  srand(time(NULL));

  tableau T;
  init_tab(T);
  aff_tableau(T);
  tri_rapide(T, 0, N - 1);
  //partitionnerInv(T, 0, N - 1);
  aff_tableau(T);
  return 0;
}
