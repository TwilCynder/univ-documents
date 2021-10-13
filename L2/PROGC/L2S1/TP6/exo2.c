#include "pile.h"
#include "lib.h"

void quickSortIter(tableau T, int deb, int fin){
  pile_t stack;
  int p;

  init_pile(&stack);
  empiler(&stack, deb);
  empiler(&stack, fin);

  while (!pile_vide(&stack)){
    fin = sommet(&stack) ; depiler(&stack);
    deb = sommet(&stack) ; depiler(&stack);
    p = partitionnerInv(T, deb, fin);

    if (p - 1 > deb){
      empiler(&stack, deb);
      empiler(&stack, p - 1);
    }
    if (p + 1 < fin){
      empiler(&stack, p + 1);
      empiler(&stack, fin);
    }
  }
}

int main(int argc, char const *argv[]) {
  tableau T;
  init_tab(T);
  aff_tableau(T);
  quickSortIter(T, 0, N - 1);
  aff_tableau(T);
  return 0;
}
