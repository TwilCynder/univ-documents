#ifndef HANOI
#define HANOI

#include "pile.h"

typedef pile_t Jeu[3];

void initialiserJeu(int n, Jeu tours);

void deplacerAnneau(Jeu tours, int depart, int arrivee);

bool deplacementPossible(Jeu tours, int depart, int arrivee);

void afficherJeu(Jeu tours);


#endif
