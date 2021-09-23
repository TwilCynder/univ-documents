#include <stdbool.h>

#define N 10
#define VAL_MAX 20

typedef int tableau[N];

void init_tab(tableau T);

void aff_tableau(tableau T);

void swap(int* a, int* b);

bool verif_partition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier);

bool verif_precondition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier);

bool verif_invariant(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier);

bool verif_postcondition(tableau T, int ind_premier, int ind_pivot, int j, int ind_dernier);

int partitionnerInv(tableau T, int ind_premier, int ind_dernier);
