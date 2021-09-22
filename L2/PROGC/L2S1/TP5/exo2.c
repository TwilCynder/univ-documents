#include <stdio.h>

#include "pile.h"



int main(int argc, char const *argv[]) {
	int n;
	printf("Nombre d'anneaux : ");
	scanf("%d", &n);
	
	pile_t callStack;
	init_pile(&callStack);
	
	int k, dep, aux, arr;
	
	empiler(&callStack, '2');
	empiler(&callStack, '1');
	empiler(&callStack, '0');
	empiler(&callStack, n);

	while (!pile_vide(&callStack)){

		k = sommet(&callStack);
		depiler(&callStack);
		dep = sommet(&callStack);
		depiler(&callStack);
		aux = sommet(&callStack);
		depiler(&callStack);
		arr = sommet(&callStack);
		depiler(&callStack);

		if (k == 1){
			printf("Déplacement de la tour %c vers la tour %c\n", dep, arr);
		} else {
			empiler(&callStack, arr);
			empiler(&callStack, dep);
			empiler(&callStack, aux);
			empiler(&callStack, k-1);

			empiler(&callStack, arr);
			empiler(&callStack, aux);
			empiler(&callStack, dep);
			empiler(&callStack, 1  );

			empiler(&callStack, aux);
			empiler(&callStack, arr);
			empiler(&callStack, dep);
			empiler(&callStack, k-1);
		}
					
	}	

	return 0;
}
