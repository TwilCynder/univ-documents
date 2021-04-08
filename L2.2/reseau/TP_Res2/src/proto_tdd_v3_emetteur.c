/*************************************************************
* proto_tdd_v2 -  émetteur                                   *
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

#define MODULO 8

int main(int argc, char *argv[])
{
    unsigned char message[MAX_INFO]; /* message de l'application */
    int taille_msg;                  /* taille du message */
    paquet_t paquet_ack;             /* paquet de controle */

    paquet_t fenetre[MODULO - 1];                 /* paquets utilisés par le protocole */
    int borne_inf = 0;
    int curseur = 0;

    int n_retransmission;
    int code_retour;
    int num_sequence = 0;

    init_reseau(EMISSION);

    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* lecture de donnees provenant de la couche application */
    de_application(message, &taille_msg);

    /* tant que l'application a des données à envoyer */
    while (taille_msg != 0 || borne_inf != curseur)
    {

        if (dans_fenetre(borne_inf, curseur, MODULO - 1)){
            
        }

        n_retransmission = 0;

        /* construction paquet */
        for (int i = 0; i < taille_msg; i++)
        {
            paquet.info[i] = message[i];
        }
        paquet.lg_info = taille_msg;
        paquet.type = DATA;
        // ajout n° de séquence
        paquet.num_seq = num_sequence;
        /* generation du controle */
        paquet.somme_ctrl = generer_controle(&paquet);
        
        /* remise à la couche reseau */
        do
        {
            vers_reseau(&paquet);
            n_retransmission ++;
            if (n_retransmission > 32){
                fprintf(stderr, "Nombre maximum de retransmission dépassé pour le paquet %d\n", num_sequence);
                return -1;
            }
            printf("Depart timer\n");
            depart_temporisateur(0, 200);
            code_retour = attendre();
            printf("Fin timer\n");
            if (code_retour == PAQUET_RECU){
                de_reseau(&paquet_ack);
            }
        } while (code_retour != PAQUET_RECU);

        arreter_temporisateur(0);
        /* lecture des donnees suivantes de la couche application */
        de_application(message, &taille_msg);
        num_sequence ++;
    }

    printf("[TRP] Fin execution protocole transfert de donnees (TDD).\n");
    return 0;
}