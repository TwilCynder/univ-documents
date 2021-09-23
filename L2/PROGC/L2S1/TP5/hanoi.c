#include <stdio.h>

#include "hanoi.h"

void initialiserJeu(int n, Jeu tours){
	for (int i = 0; i < 3; i++){
		init_pile(tours + i);
	}
	for (int i = n; i > 0; i--){
		empiler(tours, i);
	}
}

void deplacerAnneau(Jeu tours, int depart, int arrivee){
	int anneau = sommet(tours + depart);
	printf("Deplacement de l'anneau n°%d de la tour %d vers la tour %d;\n", anneau, depart, arrivee);
	empiler(tours + arrivee, anneau);
	depiler(tours + depart);
}

bool deplacementPossible(Jeu tours, int depart, int arrivee){
	return sommet(tours + depart) != 0 && ((sommet(tours + depart) < sommet(tours + arrivee)) || sommet(tours + arrivee) == 0);
}

void afficherJeu(Jeu tours){
	for (int i = 0; i < 3; i++){
		afficher_pile(tours + i);
	}
}
