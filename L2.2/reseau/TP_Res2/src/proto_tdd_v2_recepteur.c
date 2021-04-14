/*************************************************************
* proto_tdd_v2 -  recepteur                                  *
* TRANSFERT DE DONNEES  v2                                   *
*                                                            *
* Transfert de donnée avec détection d'erreur et contrôle de *
* flux et reprise sur erreur   < Stop-and-wait >             *
* T. KUNZE - Univ. de Toulouse III - Paul Sabatier           *
**************************************************************/

#include <stdio.h>
#include "application.h"
#include "couche_transport.h"
#include "services_reseau.h"

int main(int argc, char *argv[])
{
    unsigned char message[MAX_INFO]; /* message pour l'application */
    paquet_t paquet; /* paquet de données reçu */
    paquet_t paquet_ack; /* paquet d'acquittement à envoyer */ 
    int fin = 0; /* true si la condition d'arrêt est vérifiée */

    int prochain_paquet = 0; /* Numéro de séquence du prochain paquet attendu*/


    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(RECEPTION);
    printf("Version 2\n");
    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* tant que le récepteur reçoit des données */
    while (!fin)
    {
        /* Attente de réception d'un paquet (fonction bloquante)*/
        de_reseau(&paquet);
        
        /*Si le paquet est valide, c'est à dire que sa somme de contrôle est conforme*/
        if (verifier_controle(&paquet))
        {
            /*Si le paquet est bien celui qu'on attendait*/
            if (paquet.num_seq == prochain_paquet){

                /*Le nouveau paquet attendu est le suivant*/
                prochain_paquet = (paquet.num_seq + 1) % 2;
                /* Extraction des donnees du paquet recu */
                for (int i = 0; i < paquet.lg_info; i++)
                {
                    message[i] = paquet.info[i];
                }
                /*Remise des données à la couche application*/
                fin = vers_application(message, paquet.lg_info);
            }

            // envoie de l'acquittement a l'emetteur
            paquet_ack.num_seq = paquet.num_seq;
            vers_reseau(&paquet_ack);
            
        } // si le paquet reçu n'est pas conforme, on n'envoie rien et laisse l'émetteur timeout

    }

    printf("[TRP] Fin execution protocole transport.\n");
    return 0;
}