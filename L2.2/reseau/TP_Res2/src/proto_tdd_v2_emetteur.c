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

#define DUREE_TIMER 200

int main(int argc, char *argv[])
{
    unsigned char message[MAX_INFO]; /* message de l'application */
    int taille_msg;                  /* taille du message envoyé */
    paquet_t paquet;                 /* paquet de données à envoyer */
    paquet_t paquet_ack;             /* paquet utilisé par l'aqcuittement*/

    int n_retransmission;            /* Nombre de retransmissions depuis que le paquet a été construit */
    int code_retour;                 /* Valeur de retour de la fonction d'attente */
    int num_sequence = 0;            /* Numéro de séquence du paquet envoyé. Sera toujours modulo 1 */


    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(EMISSION);
    printf("Version 2\n");
    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* Lecture des données de l'application, dans message. */
    de_application(message, &taille_msg); //Il est nécessaire de le faire avant le premier test de la condition de boucle, qui repose sur taille_msg

    /* tant que l'émetteur a des données à envoyer (i.e. tant que le dernier de_application a réellement lu des données) */
    while (taille_msg != 0)
    {
        n_retransmission = 0;

                /* Construction du paquet de données */
        /* Copie message ==> paquet.info*/
        for (int i = 0; i < taille_msg; i++)
        {
            paquet.info[i] = message[i];
        }
        paquet.lg_info = taille_msg;
        paquet.type = DATA;
        // ajout n° de séquence
        paquet.num_seq = num_sequence;
        /* generation de la somme de controle du paquet */
        paquet.somme_ctrl = generer_controle(&paquet);
        
        do
        {
            /* remise à la couche reseau */
            vers_reseau(&paquet);
            n_retransmission++;
            /*Lancement d'un timer d'une durée de 200ms*/
            depart_temporisateur(0, DUREE_TIMER);
            /*Attente d'un évènement : paquet reçu ou temporisateur expiré (fonction évidememnt bloquante)*/
            code_retour = attendre();
        } while (code_retour != PAQUET_RECU && n_retransmission <= NB_RETRANS); /*Tant que le dernier évènement était un timeout et que le nombre de retransmissions effectuée ne dépasse pas le max, on retransmet (=renvoie le même paquet)*/

        /*Si on est sorti de la boucle car le nombre max de retransmissions a été dépassé, on considère le transfert comme un échec : on sort de la fonction*/
        if (n_retransmission > NB_RETRANS){
            fprintf(stderr, "Nombre maximum de retransmission dépassé pour le paquet %d\n", num_sequence);
            return -1;
        }

        /*Récupération du paquet d'acquittement. On n'a pas réellement besoin du paquet lui-même, juste de savoir qu'il est arrivé (ce que faisait la boucle précédente),
        mais sans de_reseau on reste dans l'état "un nouveau paquet est arrivé" indéfiniment*/
        de_reseau(&paquet_ack);
        /*Arrêt du temporisateur (il sera relancé à la prochaine itération)*/
        arreter_temporisateur(0);

        /* lecture des donnees suivantes de la couche application */
        de_application(message, &taille_msg);
        /*Incrémentation du numéro de séquence*/
        num_sequence = (num_sequence + 1) % 2;
    }

    printf("[TRP] Fin execution protocole transfert de donnees (TDD).\n");
    return 0;
}