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
    int taille_msg = 1;                  /* taille du message */
    paquet_t paquet_ack;             /* paquet de controle */

    paquet_t tab_paquet[SEQ_NUM_SIZE];      /*Paquets de données à envoyer (un paquet pour chaque numéro de séquence possible)*/
    int borne_inf = 0;                      /*Borne inférieure de la fenêtre*/
    int curseur = 0;                        /*Numéro de séquence du prochain paquet à envoyer. Sera toujours modulo SEQ_NUM_SIZE*/
    int taille_fenetre = SEQ_NUM_SIZE - 1;  /*Taille de la fenêtre. Doit être inférieure au numéro de séquence maximal (SEQ_NUM_SIZE)*/

    int n_retransmission;            /* Nombre de retransmissions depuis que le paquet a été construit */
    int code_retour;                 /* Valeur de retour de la fonction d'attente */

    /*Initialisation des fonctionnalités réseaux fournies par services_reseau.h*/
    init_reseau(EMISSION);
    printf("Version 3\n");
    printf("[TRP] Initialisation reseau : OK.\n");
    printf("[TRP] Debut execution protocole transport.\n");

    /* tant que l'application a des données à envoyer */
    while (taille_msg != 0 || borne_inf != curseur)
    {
        /*Il reste de la "place" dans la fenetre pour envoyer des paquets et la lecture des données de l'application n'est pas arrivée à terme*/
        if (dans_fenetre(borne_inf, curseur, taille_fenetre) && taille_msg){

            /* Lecture des données de l'application, dans message. */
            de_application(message, &taille_msg);

            /*Si des données ont été lues (test utile pour éviter d'envoyer un paquet vide)*/
            if (taille_msg){
                /* Construction du paquet de données, situé à l'indice <curseur> du tableau*/
                /* Copie message ==> paquet.info*/
                for (int i = 0; i < taille_msg; i++)
                {
                    tab_paquet[curseur].info[i] = message[i];
                }
                tab_paquet[curseur].lg_info = taille_msg;
                tab_paquet[curseur].type = DATA;
                // ajout n° de séquence
                tab_paquet[curseur].num_seq = curseur;
                /* generation du controle */
                tab_paquet[curseur].somme_ctrl = generer_controle(&tab_paquet[curseur]);

                /*Si le curseur était au tout début de la fenetre (exemple : si on vient de lancer le transfert)*/
                if (borne_inf == curseur){
                    /*On lance le temporisateur pour une durée de 200ms*/
                    depart_temporisateur(0, DUREE_TIMER);
                }

                /*Remise du paquet à la couche réseau*/
                vers_reseau(&tab_paquet[curseur]);

                /*Incrémentation du prochain numéro de séquence (modulo SEQ_NUM_SIZE)*/
                curseur = inc(curseur);
            }

        } else { //Sinon, c'est à dire si on ne peut plus envoyer de paquet
            /*Attente d'un évènement : paquet reçu ou temporisateur expiré (fonction évidememnt bloquante)*/
            code_retour = attendre();

            /*Si l'évènement qui a mis fin à l'attente est la réception d'un paquet (d'acquittement)*/
            if (code_retour == PAQUET_RECU){
                /*On le récupère*/
                de_reseau(&paquet_ack);

                /*Si l'acquittement correspond bien à un paquet de la fenetre, et qu'il est valide*/
                if (verifier_controle(&paquet_ack) && dans_fenetre(borne_inf, paquet_ack.num_seq, taille_fenetre)){

                    /*On réinitialise le compteur de retransmissions*/
                    n_retransmission = 0;
                    /*Tous les paquets jusqu'à celui qui a été acquitté (ack cumulatif) sont aquittés : on place dont la fenetre juste après le numéro de séquence acquitté*/
                    borne_inf = inc(paquet_ack.num_seq);

                    /*Le temporisateur est arrêté pour pouvoir être relancé*/
                    arreter_temporisateur(0);

                    /*On relance le temporisateur, sauf si le début de la fenetre a rattrapé le curseur, auquel cas c'est l'autre depart_temporisateur, plus haut dans le code, qui s'en chargera*/
                    if (borne_inf != curseur){
                        depart_temporisateur(0, DUREE_TIMER);
                    }
                }
            } else { //En cas de timout
                /*On relance le temporisateur*/
                depart_temporisateur(0, DUREE_TIMER);

                /*Renvoi (retransmission) de tous les paquets de la fenetre, jusqu'au curseur*/
                for (int i = borne_inf; i != curseur ; i = inc(i)){
                    vers_reseau(&tab_paquet[i]);
                }

                /*Si on a effectué NB_RETRANS depuis le dernier acquittement reçu, on considère que le transfert est un échec, la fonction retourne donc*/
                n_retransmission++;
                if (n_retransmission > NB_RETRANS){
                    printf("Maximum de retransmissions atteint\n");
                    return 1;
                }
            }
        }
    }

    printf("[TRP] Fin execution protocole transfert de donnees (TDD).\n");
    return 0;
}

