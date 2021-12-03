/* =================================================================== */
// Progrmame Serveur qui calcule le résultat d'un coup joué à partir
// des coordonnées reçues de la part d'un client "joueur".
// Version ITERATIVE : 1 seul client/joueur à la fois
/* =================================================================== */

#include <stdio.h>

#define N 10

/* =================================================================== */
/* FONCTION PRINCIPALE : SERVEUR ITERATIF                              */
/* =================================================================== */
int main(int argc, char **argv) {

    int jeu[N][N];
    int x_tresor = 4, y_tresor = 5;
    int lig, col;
    int res = -1, points = 0, coups = 0;

    /* Init args */
    if (argc == 2 && strcmp(argv[1],"rand")==0) {
        srand(time(NULL));
        x_tresor = 1 + rand()%N;
        y_tresor = 1 + rand()%N;
    }

    /* Init jeu */
    for (int i=0; i<N; i++)
        for (int j=0; j<N; j++)
            jeu[i][j] = -1;

    

    return 0;
} // end main
