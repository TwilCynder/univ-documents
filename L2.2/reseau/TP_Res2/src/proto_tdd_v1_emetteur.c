/*************************************************************
* proto_tdd_v0 -  émetteur                                   *
* TRANSFERT DE DONNEES  v0                                   *
*                                                            *
* Protocole sans contrôle de flux, sans reprise sur erreurs  *
*                                                            *
* E. Lavinal - Univ. de Toulouse III - Paul Sabatier         *
**************************************************************/

#include <stdio.h>
#include "application.h"
#include "couche_transport.h"
#include "services_reseau.h"

/* =============================== */
/* Programme principal - émetteur  */
/* =============================== */
int main(int argc, char* argv[])
{

    unsigned char message[MAX_INFO]; /* message de l'application */
    int taille_msg; /* taille du message envoyé */
    paquet_t paquet; /* paquet de données à envoyer */
    paquet_t paquet_ack; /* paquet utilisé par l'aqcuittement*/

    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(EMISSION); 

    printf("Version 1\n");
    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* Lecture des données de l'application, dans message. */
    de_application(message, &taille_msg); //Il est nécessaire de le faire avant le premier test de la condition de boucle, qui repose sur taille_msg

    /* tant que l'émetteur a des données à envoyer (i.e. tant que le dernier de_application a réellement lu des données) */
    while ( taille_msg != 0 ) {

        /* Construction du paquet de données */
        /* Copie message ==> paquet.info*/
        for (int i=0; i<taille_msg; i++) {
            paquet.info[i] = message[i];
        }
        paquet.lg_info = taille_msg;
        paquet.type = DATA;
        paquet.num_seq = 0; //Pas besoin du numéro de séquence dans ce protocole
        /*Calcul de la somme de contrôle du paquet*/
        paquet.somme_ctrl = generer_controle(&paquet); 

        do {
            /* Remise à la couche reseau */
            vers_reseau(&paquet);        
            /* Récupération du paquet envoyé par le récepteur */
            de_reseau(&paquet_ack);
        } while (paquet_ack.type == NACK); /*Tant que le recepteur a renvoyé un acquittement négatif, on renvoie le même paquet*/
        
        /* Lecture des donnees suivantes de la couche application */
        de_application(message, &taille_msg);
    }

    printf("[TRP] Fin execution protocole transfert de donnees (TDD).\n");
    return 0;
}
