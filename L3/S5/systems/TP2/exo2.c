/*
 * TP2 - Squelette exercice 2 - Synchronisation pour restreindre
 * les affichages possibles
 * Ressource partagee = ecran
 * Objectif de la synchronisation : que les threads ne puissent
 * afficher que ACDB ou ADCB a chaque "cycle"
 *  
 * Pour tester avec la temporisation par usleep, il faut definir
 * la constante lors de la compilation grace a l'option -D :
 * gcc tp23_exo2_base.c -oexo2b -DTEMPO -lpthread
 * Rappel : Votre synchronisation doit marcher avec ou sans cette
 * temporisation
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <pthread.h>
#include <semaphore.h>

#define NB_THDS 3

sem_t semaphores[NB_THDS];

//---------------------------------------------------------------------
// Afficher un message d'erreur en fonction du code erreur obtenu
// codeErr = code de retour de la fonction testee
// codeArret = adresse de l'information retournee lors du pthread_exit
// Mettre NULL si cette information n'a pas d'importance
void thdErreur(int codeErr, char *msgErr, void *codeArret) {
  fprintf(stderr, "%s: %d soit %s \n", msgErr, codeErr, strerror(codeErr));
  pthread_exit(codeArret);
}

//---------------------------------------------------------------------
// Fonction pour perdre un peu de temps
void attenteAleatoire (void) {
#ifdef TEMPO	
    usleep(rand()%100);	  
#endif
}

//---------------------------------------------------------------------
// Pour simplifier l'utilisation des semaphores et avoir un code qui
// ressemble a ce qui a ete ecrit en TD, on peut implanter l'equivalent
// des operations P et V pour les reutiliser dans les solutions
// Ou reprendre ce qui a ete fait pour l'exercice 1
//
// Implanter l'operation P
void P ( sem_t* semaphore ) {
  int res = sem_wait(semaphore);
  if (res != 0){
    thdErreur(res, "Erreur opération P", NULL);
  }
}

// Implanter l'operation V
void V ( sem_t* semaphore ) {
  int res = sem_post(semaphore);
  if (res != 0){
    thdErreur(res, "Erreur opération V", NULL);
  }
}


//---------------------------------------------------------------------
// Synchronisation a completer dans chacun des 3 threads
// en utilisant les operations P et V ecrites
//

//---------------------------------------------------------------------
// Fonction executee par le thread 1 : afficher A puis B
void *thd_1 (void *arg) {

  srand(pthread_self());

  for (;;) {
      attenteAleatoire();
    printf("A---\n");	 
      attenteAleatoire();
    V(&semaphores[1]);
    V(&semaphores[2]);
    P(&semaphores[0]);
    P(&semaphores[0]); 
    printf("B\n");	  
      attenteAleatoire();
  }
  pthread_exit((void *)NULL);
}

//---------------------------------------------------------------------
// Fonction executee par le thread 2 : afficher C 
void *thd_2 (void *arg) {

  srand(pthread_self());

  for (;;) {
      attenteAleatoire();
      P(&semaphores[1]);
    printf("C\n");	  
    V(&semaphores[0]);	  
      attenteAleatoire();
  }
  pthread_exit((void *)NULL);
}

//---------------------------------------------------------------------
// Fonction executee par le thread 3 : afficher D 
void *thd_3 (void *arg) {

  srand(pthread_self());

  for (;;) {
    attenteAleatoire();
    P(&semaphores[2]);
    printf("D\n");
    V(&semaphores[0]);	  

    attenteAleatoire();
  }
  pthread_exit((void *)NULL);
}

//---------------------------------------------------------------------
int main(void) {
  pthread_t idThds[NB_THDS];
  int etat;

  // Initialiser le(s) semaphore(s) utilise(s)
  sem_init(&semaphores[0], 0, 0); 
  for (int i = 1; i < NB_THDS; i++){
      if (sem_init(&semaphores[i], 0, 0) != 0){
        perror("Impossible d'initialiser les semaphores");
        exit(11);
      }
  }

  // Lancer les threads
  if ((etat = pthread_create(&idThds[0], NULL, thd_1, NULL)) != 0)
      thdErreur(etat, "Creation thd 1", NULL);
  if ((etat = pthread_create(&idThds[1], NULL, thd_2, NULL)) != 0)
      thdErreur(etat, "Creation thd 2", NULL);
  if ((etat = pthread_create(&idThds[2], NULL, thd_3, NULL)) != 0)
      thdErreur(etat, "Creation thd 3", NULL);

  // Attendre leur fin
  if ((etat = pthread_join(idThds[0], NULL)) != 0)
    thdErreur(etat, "Join thread 1", NULL);
  if ((etat = pthread_join(idThds[1], NULL)) != 0)
    thdErreur(etat, "Join thread 2", NULL);
  if ((etat = pthread_join(idThds[2], NULL)) != 0)
    thdErreur(etat, "Join thread 3", NULL);

  // Detruire le(s) semaphore(s) utilise(s)
  for (int i = 0; i < NB_THDS; i++){
      if (sem_destroy(&semaphores[i]) != 0);
      perror("Impossible de détruire les sémaphores");
      exit(12);
  }

  printf ("\nFin de l'execution du thread principal \n");
  return 0;
}
