#include <stdio.h>

#include "hanoi.h"

int main(int argc, char const *argv[]) {
	int n;

	printf("Nombre d'anneaux : ");
	scanf("%d", &n);

	Jeu tours;
	initialiserJeu(n, tours);
	
	printf("Etat de départ du jeu : \n");
	afficherJeu(tours);
	printf("----Résolution----\n");	
	
	while (!(pile_vide(tours) && pile_vide(tours + 1))){
		int i, j, k;
		for (i = 0; i < 3; i ++){ //on cherche le plus petit pour le déplacer dans le sens anti-trigo
			if (sommet(tours + i) == 1){
				j = (i + 2) % 3; //nouvelle position du petit anneau ((i + 2) % 3 au lieu de i - 1 pour éviter le cas où i - 1 = -1), on la stocke pour la suite
				deplacerAnneau(tours, i, j); //(i + 2) % 3 au lieu de i - 1 pour éviter le cas où i - 1 = -1
				break; 
			}
		}
		k = 3 - i - j; //à ce point on a : i = ancienne position du petit anneau, j = nouvelle position du petit anneau, k = l'autre pique
		if (deplacementPossible(tours, k, i)){ //pour les deux piques (i et k) où ne se trouvent pas le plus petit anneau, on effectue le seul déplacement possible
			deplacerAnneau(tours, k, i);
		} else if (deplacementPossible(tours, i, k)){
			deplacerAnneau(tours, i, k);
		}
			
	}
	printf("----Résolution terminée----\n");
	afficherJeu(tours);
	return 0;
}
