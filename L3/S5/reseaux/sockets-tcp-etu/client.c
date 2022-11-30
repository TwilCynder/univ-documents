/* =================================================================== */
// Progrmame Client à destination d'un joueur qui doit deviner la case
// du trésor. Après chaque coup le résultat retourné par le serveur est
// affiché. Le coup consite en une abcsisse et une ordonnée (x, y).
/* =================================================================== */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <arpa/inet.h>

#define N 10
#define RESET   "\033[0m"
#define RED     "\033[31m"
#define GREEN   "\033[32m"
#define YELLOW  "\033[33m"
#define MAGENTA "\033[35m"

#define MSG_LEN 8

void error(const char* msg, int code){
    //On va utiliser des exit() plutôt que des return (meilleure portabilité au sein du programme)
    perror(msg);
    exit(code);
}

/* ====================================================================== */
/*                  Affichage du jeu en mode texte brut                   */
/* ====================================================================== */
void afficher_jeu(int jeu[N][N], int res, int points, int coups) {

    printf("\n************ TROUVEZ LE TRESOR ! ************\n");
    printf("    ");
    for (int i=0; i<10; i++)
        printf("  %d ", i+1);
    printf("\n    -----------------------------------------\n");
    for (int i=0; i<10; i++){
        printf("%2d  ", i+1);
        for (int j=0; j<10; j++) {
            printf("|");
            switch (jeu[i][j]) {
                case -1:
                    printf(" 0 ");
                    break;
                case 0:
                    printf(GREEN " T " RESET);
                    break;
                case 1:
                    printf(YELLOW " %d " RESET, jeu[i][j]);
                    break;
                case 2:
                    printf(RED " %d " RESET, jeu[i][j]);
                    break;
                case 3:
                    printf(MAGENTA " %d " RESET, jeu[i][j]);
                    break;
            }
        }
        printf("|\n");
    }
    printf("    -----------------------------------------\n");
    printf("Pts dernier coup %d | Pts total %d | Nb coups %d\n", res, points, coups);
}


/* ====================================================================== */
/*                    Fonction principale                                 */
/* ====================================================================== */
int main(int argc, char **argv) {
    int jeu[N][N];
    int lig, col;
    int res = -1, points = 0, coups = 0;

    /* Init args */
    if (argc < 3){
        //Si on n'a pas assez d'arguments, on affiche un message d'erreur et on termine.
        fprintf(stderr, "Usage : %s IP_Serveur Port\n", argv[0]);
        exit(12);
    }

    const char* server_ip = argv[1]; //L'ip est gardée sous forme de chaîne pour l'instant, on pourra la transformer en nombre 32 bits plus tard
    unsigned short server_port = atoi(argv[2]);

    /* Init jeu */
    for (int i=0; i<N; i++)
        for (int j=0; j<N; j++)
            jeu[i][j] = -1;

    /* Creation socket TCP */
    int local_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (local_socket == -1) {
        error("Socket creation error", 1);
    }

    /* Init caracteristiques serveur distant (struct sockaddr_in) */
    struct sockaddr_in dst_serv_adr;
    memset(&dst_serv_adr, 0, sizeof(dst_serv_adr)); //Il est important que les champs qu'on n'utilise pas soient à 0, on met donc tout à 0 avant toute chose
    dst_serv_adr.sin_family = AF_INET;
    dst_serv_adr.sin_port = htons(server_port);     //htons transforme un int en in_port_t, pouvant notament opérer un changement de byte order
    inet_pton(AF_INET, server_ip, &(dst_serv_adr.sin_addr));    //inet_pton transforme une adresse IPv4 en notation pointée (x.x.x.x) en nombre 32 bits

    printf("Connexion au serveur ...\n");

    /* Etablissement connexion TCP avec process serveur distant */
    if (connect(local_socket, (const struct sockaddr*)&dst_serv_adr, sizeof(dst_serv_adr)) == -1){
        close(local_socket);
        error("Connection error", 2);
    }

    //Zone mémoire qui sera utilsée pour les données reçues et envoyées
    char buffer[MSG_LEN];

    /*
    NOTE : le client affichera "connexion réussie" et la grille de jeu même si le serveur (en mode itératif) est déjà occupé avec un autre client, et ne se bloquera qu'après
    avoir envoyé une première tentative (car le serveur ne répondra qu'après avoir fini avec le client actuel).
    Pour éviter ça (et ne lancer le jeu que quand le serveur est prêt à s'occuper de nous) on peut décider que le serveur doit avant toute chose envoyer un message
    "je suis prêt" au client, et, côté client, n'indiquer à l'user que tout est bon que lorsqu'on a reçu ce message du serveur.
    C'est ce que fait le recv commenté ci-dessous, que j'ai préféré laisser en commentaire ne sachant pas dans quelle mesure on doit se limiter à l'énoncé
    */

    /*
    if (recv(local_socket, buffer, MSG_LEN, 0) == -1){
            close(local_socket);
            error("Receive error", 4);
    }
    */

    printf("Connexion réussie !\n");

    /* Tentatives du joueur : stoppe quand tresor trouvé */
    do {
        afficher_jeu(jeu, res, points, coups);  //Affichage de la grille de jeu
        printf("\nEntrer le numéro de ligne : ");   //prompt
        scanf("%d", &lig);
        printf("Entrer le numéro de colonne : ");
        scanf("%d", &col);

        /* Construction requête (serialisation en chaines de caractères) */
        sprintf(buffer, "%d %d", lig, col);

        /* Envoi de la requête au serveur (send) */
        if (send(local_socket, buffer, MSG_LEN, 0) == -1){
            close(local_socket);
            error("Send error", 3);
        }

        /* Réception du resultat du coup (recv) */
        int recv_result = recv(local_socket, buffer, MSG_LEN, 0);
        //recv envoie 0 si le serveur est arrêté, on teste donc cette valeur de retour en + du -1 signifiant une erreur
        switch ( recv_result){
            case -1:
                close(local_socket);
                error("Receive error", 4);
            case 0:
                fprintf(stderr, "Le serveur s'est arrêté.\n");
                close(local_socket);
                exit(12);
        }


        /* Deserialisation du résultat en un entier */
        sscanf(buffer, "%d", &res);

        /* Mise à jour de la grille de jeu*/
        if (lig>=1 && lig<=N && col>=1 && col<=N)
            jeu[lig-1][col-1] = res;
        points += res;
        coups++;

    } while (res);

    /* Fermeture connexion TCP */
    close(local_socket);

    /* Terminaison du jeu : le joueur a trouvé le tresor */
    afficher_jeu(jeu, res, points, coups);  //on affiche la grille de jeu une dernière fois
    printf("\nBRAVO : trésor trouvé en %d essai(s) avec %d point(s)"
            " au total !\n\n", coups, points);
    return 0;
}
