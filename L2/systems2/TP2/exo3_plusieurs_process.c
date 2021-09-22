#include <stdio.h>
#include <stdlib.h>
#include "traiterLigne.h"
#include "matrice.h"
#include "unistd.h"
#include <sys/types.h>
#include <sys/wait.h>

int main(int argc, char const *argv[]) {
  if (argc < 5) {
    printf("Usage : %s nbL nbC v1 v2\n", argv[0]);
    exit(0);
  }
  int nbL = atoi(argv[1]);
  int nbC = atoi(argv[2]);
  int v1 =  atoi(argv[3]);
  int v2 =  atoi(argv[4]);

  int mat[NB_LIGNES_MAX][NB_COLONNES_MAX];
  initialiserMatrice(mat, nbL, nbC);

  unsigned res;
  unsigned nb_aucun = 0, nb_v1 = 0, nb_v2 = 0, nb_v1_v2 = 0;
  pid_t pid;
  int circonstance;

  afficherMatrice(mat, nbL, nbC);

  for (int i = 0; i < nbL; i++){
    pid = fork();
    if (pid == 0) {
      res = traiterLigne(mat[i], nbC, v1, v2);
      exit(res);
    }
  }

  for (int i = 0; i < nbL; i++){
    wait(&circonstance);
    res = WEXITSTATUS(circonstance);
    switch (res) {
      case 0: ++nb_aucun; break;
      case 1: ++nb_v1; break;
      case 2: ++nb_v2; break ;
      case 3: ++nb_v1_v2; break;
    }
    printf("%d : %d\n", i, res);
  }

  printf("total %d %d %d %d\n", nb_aucun, nb_v1, nb_v2, nb_v1_v2);
  return 0;
}

/* réponse à la question 3 :
version 1 :
real	0m0,002s
user	0m0,001s
sys	0m0,001s

version 2 :
real	0m0,004s
user	0m0,005s
sys	0m0,003s

la version 2 est plus lente en raison du grand nombre d'appels systèmes effectués.
Ceci dit, si le temps nécessaire au traitement était largement supérieur au temps nécessaire pour les appels
système, la version 2 serait probablement plus rapide, étant donné que tous les traitements sont réalisés en paralèlle
*/
