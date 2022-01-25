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
        fprintf(stderr, "Usage : %s IP_Serveur Port\n", argv[0]);
    }
    const char* server_ip = argv[1];
    unsigned short server_port = atoi(argv[2]);

    /* Init jeu */
    for (int i=0; i<N; i++)
        for (int j=0; j<N; j++)
            jeu[i][j] = -1;

    /* Creation socket TCP */
    int local_socket = socket(AF_INET, SOCK_STREAM, 0);
    if (local_socket == -1) {
        perror("Socket creation error");
        return 1;
    }

    /* Init caracteristiques serveur distant (struct sockaddr_in) */
    struct sockaddr_in dst_serv_adr;
    memset(&dst_serv_adr, 0, sizeof(dst_serv_adr));
    dst_serv_adr.sin_family = AF_INET;
    dst_serv_adr.sin_port = htons(server_port);
    inet_pton(AF_INET, server_ip, &(dst_serv_adr.sin_addr));

    /* Etablissement connexion TCP avec process serveur distant */
    if (connect(local_socket, (const struct sockaddr*)&dst_serv_adr, sizeof(dst_serv_adr)) == -1){
        perror("Connection error");
        close(local_socket);
        return 2;
    }

    /* Tentatives du joueur : stoppe quand tresor trouvé */
    char buffer[MSG_LEN];
    do {
        afficher_jeu(jeu, res, points, coups);
        printf("\nEntrer le numéro de ligne : ");
        scanf("%d", &lig);
        printf("Entrer le numéro de colonne : ");
        scanf("%d", &col);

        /* Construction requête (serialisation en chaines de caractères) */
        sprintf(buffer, "%d %d", lig, col);

        /* Envoi de la requête au serveur (send) */
        if (send(local_socket, buffer, MSG_LEN, 0) == -1){
            perror("Send error");
            close(local_socket);
            return 3;
        }

        /* Réception du resultat du coup (recv) */
        if (recv(local_socket, buffer, MSG_LEN, 0) == -1){
            perror("Receive error");
            close(local_socket);
            return 4;
        }

        /* Deserialisation du résultat en un entier */
        sscanf(buffer, "%d", &res);

        /* Mise à jour */
        if (lig>=1 && lig<=N && col>=1 && col<=N)
            jeu[lig-1][col-1] = res;
        points += res;
        coups++;

    } while (res);

    /* Fermeture connexion TCP */
    close(local_socket);

    /* Terminaison du jeu : le joueur a trouvé le tresor */
    afficher_jeu(jeu, res, points, coups);
    printf("\nBRAVO : trésor trouvé en %d essai(s) avec %d point(s)"
            " au total !\n\n", coups, points);
    return 0;
}
