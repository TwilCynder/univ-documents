#include <unistd.h>
#include <stdio.h>

void afficher(int nbSec) {
	printf("Processus %d : je boucle\n", getpid());
	sleep(nbSec);
}

