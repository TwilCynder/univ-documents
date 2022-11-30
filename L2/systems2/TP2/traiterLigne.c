
#include "matrice.h"
#include "traiterLigne.h"

/* retourne 0: aucun trouve, 1: V1 trouve, 2: v2 trouve et 3: v1 et v2 trouve */
unsigned traiterLigne(  int uneLigne[NB_COLONNES_MAX], unsigned nbC,
			unsigned v1, unsigned v2)
{
		unsigned result = 0;
		for (int i = 0; i < nbC; i++){
			result = result | ((uneLigne[i] == v1) | ((uneLigne[i] == v2) << 1));
		}
    return result;
}
