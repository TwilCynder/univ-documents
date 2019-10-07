/*
 * Vérification de parenthèses.
 */

#include <stdio.h>

#include "pile.h"

int main() {
	pile_t p;
	char c;
	
	init_pile(&p);
	
	scanf("%c", &c);
	while(c != '$') {
	
		// ajoutez votre code ici
	
		scanf("%c", &c);
	}

	return 0;
}
