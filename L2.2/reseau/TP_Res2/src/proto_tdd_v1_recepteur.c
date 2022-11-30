/*************************************************************
* proto_tdd_v0 -  récepteur                                  *
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
/* Programme principal - récepteur */
/* =============================== */
int main(int argc, char* argv[])
{
    unsigned char message[MAX_INFO]; /* message pour l'application */
    paquet_t paquet; /* paquet de données reçu */
    paquet_t paquet_ack; /* paquet d'acquittement à envoyer */ 
    int fin = 0; /* true si la condition d'arrêt est vérifiée */

    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(RECEPTION);

    printf("Version 1\n");
    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* tant que le récepteur reçoit des données */
    while ( !fin ) {
        
        /* Attente de réception d'un paquet (note : fonction bloquante)*/
        de_reseau(&paquet);

        /*Si l'intégrité du paquet a été conservée*/
        if (verifier_controle(&paquet)){
            /* extraction des donnees du paquet recu */
            for (int i=0; i<paquet.lg_info; i++) {
                message[i] = paquet.info[i];
            }
            /* remise des données à la couche application */
            fin = vers_application(message, paquet.lg_info);
            /*Le paquet est acquitté*/
            paquet_ack.type = ACK;
        } else {
            /*Le paquet est non-acquitté*/
            paquet_ack.type = NACK;
        }

        /*Envoi du paquet d'acquittement*/
        vers_reseau(&paquet_ack);
    }

    printf("[TRP] Fin execution protocole transport.\n");
    return 0;
}
