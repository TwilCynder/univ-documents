/*
 * Somme d'entiers.
 */

#include <stdio.h>

#include "pile.h"

/**
 * Calcul de la somme de l'expression representée en
 * chaine de caractere, mode récursif.
 * @param p		Pointeur sur le caractère courant.
 * @param s		Nombre courant.
 * @return		Résultat de la somme.
 */
int somme_rec(char *p, int s) {
	if(*p == '\0')
		return s;
	else if(*p == '+')
		return s + somme_rec(p + 1, 0);
	else
		return somme_rec(p + 1, s * 10 + *p - '0');
}

/**
 * Dépile les chiffres pour former un nombre
 * @param p		Pile contenant des chiffres (plus faible poids en haut) sous forme de char
 * @return		Nombre correspondant aux chiffres de la pile.
 */

int getNumber(pile_t* p){
	int n = 0;
	int i = 1;
	while (!pile_vide(p)){
		n = ((sommet(p) - '0') * i) + n ;
		i *= 10;
		depiler(p);
	}
	return n;
}

/**
 * Calcul de la somme de l'expression representée en
 * chaine de caractere, mode itératif en utilisant une pile.
 * @param c		Pointeur sur le début de la chaîne de caractère.
 * @return		Résultat de la somme.
 */

int somme_iter(char *c) {
	pile_t p;
	init_pile(&p);

	int s = 0;

	while (*c != '\0'){
		if (*c == '+'){
			s += getNumber(&p);
		} else {
			empiler(&p, *c);
		}
		c++;
	}
	s += getNumber(&p);

	return s;

}

int main() {
	char ch[256];

	printf("Entrez une somme :\n");
	scanf("%s", ch);

	printf("Resultat recursif : %d\n", somme_rec(ch, 0));
	printf("Resultat itératif : %d\n", somme_iter(ch));

	return 0;
}
