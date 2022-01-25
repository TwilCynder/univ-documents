/* TP5 - Exercice 3
 * CB/UPS/IRIT
 * Envoyer un message a son fils de maniere periodique.
 * Parametres : periode en secondes & nombre d'envois
 * gcc tp5_exo3_base.c -o tp5_exo3_base -Wall
*/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>
#include <string.h>
#include <errno.h>
#include <time.h>
#include <wait.h>

#define LG_MAX 80

int dureePeriode;
int nbEnvois;
int cptEnvois = 0;

//-----------------------------------------------------------
void envoyerMessage (int sigRecu) {
  int res;
  time_t t;
  char monMsg[LG_MAX];

  sprintf(monMsg, "%s %d %s %s", "Message numero", cptEnvois, " envoye a ", 
		  (time(&t), ctime(&t)));
  cptEnvois++;

  // Envoyer message 
  // A completer

}

//-----------------------------------------------------------
void fils (void) {
  char leMsg[LG_MAX];
  time_t t;

  // A completer
    printf("\tFils - Recu de mon pere : %s\n", leMsg);

  printf("\tFils - Je me termine a : %s\n", (time(&t), ctime(&t)));
  exit(0);
}

//-----------------------------------------------------------
// Pour simuler un traitement, dans la realite on ferait 
// quelque chose dans le while...
void monTraitement (void) {
  while (cptEnvois < nbEnvois);	
}

//-----------------------------------------------------------
int main (int argc, char *argv[]) {

  time_t t;

  if (pipe(tube) == -1) error("Pipe", 1);

  if (argc < 3) {
    fprintf(stderr, "Usage : %s nbFois nbSec\n", argv[0]);
    exit(1);
  }

  nbFois = atoi(argv[1]);
  nbSec = atoi(argv[2]);
  
  switch(fork()) {
    case -1  : perror("Echec fork ");
               exit(3);
    case 0   : fils();
    default  : break;
  }

  struct sigaction my_sa;
  sigemptyset(&my_sa.sa_mask);
  my_sa.sa_handler = &monTraitement;
  my_sa.sa_flags = 0;
  if (sigaction(SIGALRM, &my_sa, NULL) < 0) error("Sigaction", 10);

  alarm()

  printf("J'arme la periode de %d secondes\n", dureePeriode);

  // Continuer son traitement
  monTraitement();


  printf("\tPere - Je me termine en dernier a : %s\n", 
		  (time(&t), ctime(&t)));
  return 0;
}

