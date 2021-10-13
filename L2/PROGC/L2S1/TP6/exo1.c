#include "lib.h"

#include <time.h>
#include <stdlib.h>


void tri_rapide(tableau T, int ind_premier, int ind_dernier){
  int ind_pivot;
  if (ind_premier < ind_dernier){
    ind_pivot = partitionnerInv(T, ind_premier, ind_dernier);
    tri_rapide(T, ind_premier, ind_pivot - 1);
    tri_rapide(T, ind_pivot + 1, ind_dernier);
  }
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
