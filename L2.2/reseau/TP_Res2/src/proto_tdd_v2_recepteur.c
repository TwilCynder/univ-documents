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
#include "controle.h"

int main(int argc, char *argv[])
{
    unsigned char message[MAX_INFO]; /* message pour l'application */
    paquet_t paquet;                 /* paquet utilisé par le protocole */
    paquet_t paquet_ack;             /* paquet de controle */
    int fin = 0;                     /* condition d'arrêt */

    int prochain_paquet = 0;

    init_reseau(RECEPTION);

    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* tant que le récepteur reçoit des données */
    while (!fin)
    {
        de_reseau(&paquet);

        paquet_ack.type = ACK;
        paquet_ack.num_seq = paquet.num_seq;
        
        if (verifier_controle(&paquet) && paquet.type == DATA && paquet.num_seq == prochain_paquet)
        {
            /* extraction des donnees du paquet recu */
            for (int i = 0; i < paquet.lg_info; i++)
            {
                message[i] = paquet.info[i];
            }
            /* remise des données à la couche application */
            fin = vers_application(message, paquet.lg_info);

            // envoie de l'acquittement a l'emetteur
            vers_reseau(&paquet_ack);
            prochain_paquet = paquet.num_seq + 1;
        } // si le paquet reçu n'est pas conforme, on n'envoie rien et laisse l'émetteur timeout

    }

    printf("[TRP] Fin execution protocole transport.\n");
    return 0;
}