/*
 * Vérification de parenthèses.
 */

#include <stdio.h>

#include "pile.h"

char parent_corres(char p){  //renvoie la parenthèse fermante correspondant à la parenthèse ouvrante p. Permet d'éviter des duplications de code lors des erreurs de type 2
	switch (p){
		case '(' :
			return ')';
		case '[' :
			return ']';
		case '{' :
			return '}';
	}
	return '\0';
}

int main() {
	pile_t p;
	char c;
	int error = 0;//0 : pas d'erreur pdt la boulce ;1 : on a rencontré une parenthèse fermante alors que la pile était vide ; 2 : on a rencontré la mauvaise parenthèse fermante
	char parent_attendue;
	int ligne = 1, colonne = 1;

	init_pile(&p);

	scanf("%c", &c);
	while(c != '$' && !error) {

		if (c == '(' || c == '[' || c == '{'){
			empiler(&p, c); //c sera cast en int pour être placé dans la pile
		} else if (c == ')' || c == ']' || c == '}'){
			if (pile_vide(&p)){
				error = 1;
				continue;
			}
			parent_attendue = parent_corres((char)sommet(&p));
			if (c != parent_attendue){
				error = 2;
				continue;
			}
			depiler(&p);
		} else if (c == '\n'){
			colonne = 1;
			ligne += 1;
		}

		scanf("%c", &c);
		colonne += 1;
	}

	if (error == 1){
		printf("Erreur a la ligne %d colonne %d : trop de parenthèses fermantes.\n", ligne, colonne);
	} else if (error == 2){
		printf("Erreur a la ligne %d colonne %d : %c rencontrée au lieu de %c.\n", ligne, colonne, c, parent_attendue);
	} else if (!pile_vide(&p)){
			printf("Erreur a la fin du texte : trop de parenthèses ouvrantes.\n");
	} else {
		printf("Aucune erreur\n");
	}

	return 0;
}
