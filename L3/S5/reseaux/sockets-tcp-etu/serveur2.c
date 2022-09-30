/* =================================================================== */
// Progrmame Serveur qui calcule le résultat d'un coup joué à partir
// des coordonnées reçues de la part d'un client "joueur".
// Version ITERATIVE : 1 seul client/joueur à la fois
/* =================================================================== */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include "tresor.h"

#define N 10
#define MSG_LEN 8
#define MAX_QLEN 16
#define DEFAULT_PORT 5454

void error(const char* msg, int code){
    //On va utiliser des exit() plutôt que des return (meilleure portabilité au sein du programme)
    perror(msg);
    exit(code);
}

/*Calcule aléatoirement une valeur entre 1 et 10 pour la position du trésor*/
void rand_pos(int* x, int* y){
    *x = 1 + rand()%N;
    *y = 1 + rand()%N;
    printf("Jeu initialisé ; trésor situé en %d %d\n", *x, *y);
}

/* =================================================================== */
/* FONCTION PRINCIPALE : SERVEUR ITERATIF                              */
/* =================================================================== */
int main(int argc, char **argv) {

    //A priori on n'a besoin que des coordonnées du trésor côté serveur
    int x_tresor = 4, y_tresor = 5;
    int randomize = 0; //indique si la position doit être randomisée à chaque partie

    int port = 0;   //Passer le numéro de port est optionel, on a une valeur par défaut, cependant je n'initialise pas port à cette valeur car je veux aussi
                    //que le serveur utilise le port par défaut si on a rentré 0 dans la ligne de commande
    if (argc > 1){
        port = atoi(argv[1]);
    }

    //Si un 2 ème argument "rand" a été passé, on doit randomizer la position du trésor à chaque partie
    if (argc == 3 && strcmp(argv[2],"rand")==0) {
        srand(time(NULL));
        randomize = 1;
    }

    //Si le port est 0 (donc pas d'argument OU le 1er argument était 0), on utilise le port par défaut
    if (port == 0) port = DEFAULT_PORT;

    /* Creation socket TCP */
    int serv_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (serv_socket == -1) {
        error("Socket creation error", 1);
    }

    struct sockaddr_in serv_address;
    memset(&serv_address, 0, sizeof(serv_address)); //Il est important que les champs qu'on n'utilise pas soient à 0, on met donc tout à 0 avant toute chose
    serv_address.sin_family = AF_INET;
    serv_address.sin_port = htons(port); //htons transforme un int en in_port_t, pouvant notament opérer un changement de byte order
    serv_address.sin_addr.s_addr = htonl(INADDR_ANY); /* any interface */
    /*Bind du socket sur le port choisi*/
    if (bind(serv_socket, (struct sockaddr*) &serv_address, sizeof(serv_address)) == -1) {
        close(serv_socket);
        error("Bind error", 2);
    }

    /*Connection passive*/
    if (listen(serv_socket, MAX_QLEN) == -1) {
        close(serv_socket);
        error("Listen error", 3);
    }

    printf("Serveur lancé (port : %d)\n", port);


    struct sockaddr_in cli_address; //Contiendra l'addresse du client
    socklen_t cli_adr_len = sizeof(cli_address);
    char buffer[MSG_LEN];   //Zone mémoire qui sera utilsée pour les données reçues et envoyées
    int local_socket;       //Extrémité de connexion qui sera créée pour chaque client qui se connecte (connexion active)
    while(1){
        /*Attente d'une demande de connexion*/
        local_socket = accept(serv_socket, (struct sockaddr*)&cli_address, &cli_adr_len);
        if (local_socket < 0) {
            close(serv_socket);
            error("Accept error", 4);
        }

        //Un client s'est connecté : on crée un processus fils pour s'en occuper
        switch (fork()){
            case -1:
                error("Fork error", 10);
            case 0: //Si fork renvoie 0, on est dans le processus fils
                printf("Client connecté (%s:%d), géré par processus %d\n", inet_ntoa(cli_address.sin_addr), cli_address.sin_port, getpid());

                //Si on avait spécifié "rand", la position du trésor est choisie au hasard
                if (randomize){
                    rand_pos(&x_tresor, &y_tresor);
                }

                /*
                NOTE : le client affichera "connexion réussie" et la grille de jeu même si le serveur (en mode itératif) est déjà occupé avec un autre client, et ne se bloquera qu'après
                avoir envoyé une première tentative (car le serveur ne répondra qu'après avoir fini avec le client actuel).
                Pour éviter ça (et ne lancer le jeu que quand le serveur est prêt à s'occuper de nous) on peut décider que le serveur doit avant toute chose envoyer un message
                "je suis prêt" au client, et, côté client, n'indiquer à l'user que tout est bon que lorsqu'on a reçu ce message du serveur.
                C'est ce que fait le send commenté ci-dessous, que j'ai préféré laisser en commentaire ne sachant pas dans quelle mesure on doit se limiter à l'énoncé
                */

                /*
                if (send(local_socket, buffer, MSG_LEN, 0) == -1){
                    close(local_socket);
                    error("Send error", 6);
                }*/

                int points;
                int xp, yp;
                /*Une fois que le client est connecté, on lance la boucle de jeu*/
                do {
                    /* Réception de la tentative (recv) */
                    int recv_result = recv(local_socket, buffer, MSG_LEN, 0);
                    //recv envoie 0 si le serveur est arrêté, on teste donc cette valeur de retour en + du -1 signifiant une erreur
                    switch (recv_result){
                        case -1:
                            close(serv_socket);
                            error("Receive error", 5);
                        case 0:
                            fprintf(stderr, "Serveur %d (connecté à %s:%d) : Client déconnecté (je me termine)\n", getpid(), inet_ntoa(cli_address.sin_addr), cli_address.sin_port);
                            exit(1);
                    }

                    /* Deserialisation du résultat en un couple d'entiers */
                    sscanf(buffer, "%d %d", &xp, &yp);
                    //On utilise la fonction fournie dans tresor.h pour calculer la distance au trésor
                    points = recherche_tresor(N, x_tresor, y_tresor, xp, yp);
                    printf("Tentative reçue (%d %d), le nombre de points est %d\n", xp, yp, points);

                    /* Construction de la réponse (serialisation en chaines de caractères) */
                    sprintf(buffer, "%d", points);

                    /* Envoi de la réponse au client (send) */
                    if (send(local_socket, buffer, MSG_LEN, 0) == -1){
                        close(local_socket);
                        error("Send error", 6);
                    }

                } while (points);   //Si nb de points est 0, alors le joueur avait trouvé le trésor donc partie terminée (le client va se déconnecter une fois qu'il aura reçu le message comme quoi il a eu 0 points sur ce coup)
                printf("Serveur %d (connecté à %s:%d) : Partie terminée (je me termine)\n", getpid(), inet_ntoa(cli_address.sin_addr), cli_address.sin_port);

                close(local_socket);
                exit(0);
            default: //Si fork renvoie > 0, on est dans le processus père : on ferme localement le socket utilisé par la connexion avec le client (le fils s'en occupe), et on reboucle
                close(local_socket);
        }
    }

    close (serv_socket);

    return 0;
} // end main
