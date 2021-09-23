#include "pile.h"
#include "mergeSort.h"

void mergeSortIterative(int T[], int size, int M[]){
    pile_t p; init_pile(&p);
    pile_t q; init_pile(&q);
    int f1, l1, f2, l2;

    for (int i = 0; i < size; i++){
      empiler(&p, i);
      empiler(&p, i);
    }

    while (p.som > 1){ //si p ne contient plus que 2 éléments, on a fini
      while(!pile_vide(&p)){
        l2 = sommet(&p); depiler(&p);
        f2 = sommet(&p); depiler(&p);

        if (!pile_vide(&p)){ // /!\ les 2 sous tableaux doivent se suivre
          l1 = sommet(&p); depiler(&p);
          f1 = sommet(&p); depiler(&p);
          merge(T, f1, l1, f2, l2, M);
          f2 = f1;
        }
        empiler(&q, l2);
        empiler(&q, f2); //on empile first après last pour que tout soit à l'envers
      }

      init_pile(&p); //on vide p

      while (!pile_vide(&q)){
        empiler(&p, sommet(&q)) ; depiler(&q);
        empiler(&p, sommet(&q)) ; depiler(&q);
      }

      init_pile(&q); //on vide q

    }
}

int main(int argc, char const *argv[]) {
  test_S(&mergeSortIterative);
  return 0;
}
