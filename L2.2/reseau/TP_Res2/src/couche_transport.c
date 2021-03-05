#include <stdio.h>
#include "couche_transport.h"
#include "services_reseau.h"

/* ************************************** */
/* Fonctions utilitaires couche transport */
/* ************************************** */

/*
 * Ajouter ici vos fonctions utilitaires
 * (generer_controle, verifier_controle...)
 */

/* ======================================================================= */
/* =================== Fenêtre d'anticipation ============================ */
/* ======================================================================= */

/*--------------------------------------*/
/* Fonction d'inclusion dans la fenetre */
/*--------------------------------------*/
int dans_fenetre(unsigned int inf, unsigned int pointeur, int taille) {

    unsigned int sup = (inf+taille-1) % SEQ_NUM_SIZE;

    return
        /* inf <= pointeur <= sup */
        ( inf <= sup && pointeur >= inf && pointeur <= sup ) ||
        /* sup < inf <= pointeur */
        ( sup < inf && pointeur >= inf) ||
        /* pointeur <= sup < inf */
        ( sup < inf && pointeur <= sup);
}
