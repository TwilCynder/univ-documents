#include "afficher.h"
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char** argv){
  if (argc < 3) {
    fprintf(stderr, "Usage : %s nbFois nbSec\n", argv[0]);
    exit(1);
  }

  int nbFois = atoi(argv[1]);
  int nbSec = atoi(argv[2]);

  for (int i = 0; i < nbFois; i++){
    afficher(nbSec);
  }
}