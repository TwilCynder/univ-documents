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
    paquet_t paquet;                 /* paquet utilisé par le protocole */
    paquet_t paquet_ack;             /* paquet de controle */
    int fin = 0;                     /* condition d'arrêt */

    int prochain_paquet = 0;        /* Numéro de séquence du prochain paquet attendu*/
    int dernier_paquet_valide = -1; /* Numéro du dernier paquet valide et en séquence*/

    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(RECEPTION);
    printf("Version 3\n");
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
            /*Si le paquet reçu était bien celui attendu*/
            if (paquet.num_seq == prochain_paquet){
                dernier_paquet_valide = prochain_paquet;                
                prochain_paquet = inc(prochain_paquet);

                /* extraction des donnees du paquet recu */
                for (int i = 0; i < paquet.lg_info; i++)
                {
                    message[i] = paquet.info[i];
                }
                /*Remise des données */
                fin = vers_application(message, paquet.lg_info);

                /*On acquitte le paquet reçu*/
                paquet_ack.num_seq = paquet.num_seq;
                paquet_ack.somme_ctrl = generer_controle(&paquet_ack);
                vers_reseau(&paquet_ack);
            } else if (dernier_paquet_valide >= 0){
                /*On acquitte le dernier paquet valide reçu*/
                paquet_ack.num_seq = dernier_paquet_valide;
                paquet_ack.somme_ctrl = generer_controle(&paquet_ack);
                vers_reseau(&paquet_ack);
            }
        } // si le paquet reçu n'est pas conforme, on n'envoie rien et laisse l'émetteur timeout
    }

    printf("[TRP] Fin execution protocole transport.\n");
    return 0;
}