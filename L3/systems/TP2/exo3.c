/*
 * TP3 - Squelette exercice 3 - Rendez-vous entre N threads
 * Objectif de la synchronisation : que les threads s'attendent
 * pour passer un point de leur code
 *
 * Pour tester avec la temporisation par usleep, il faut definir
 * la constante lors de la compilation grace a l'option -D :
 * gcc tp23_exo3_base.c -oexo3b -DTEMPO -lpthread -Wall
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

int nbThreads;
sem_t* semaphores;
pthread_mutex_t mutex;
int compteur;

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
// Synchronisation a completer pour realiser le RdV
//
void passerRdV (int num) {
  pthread_mutex_lock(&mutex);
  compteur++;
  printf("%d\n", compteur);
  if (compteur >= nbThreads){
    for (int i = 0; i < nbThreads; i++){
      V(semaphores + i);
    }
  }
  pthread_mutex_unlock(&mutex);
  P(semaphores + num);
  printf("Thread %d (%lu) : Je passe le point de RdV\n", num, pthread_self());	  
}

//---------------------------------------------------------------------
// Fonction executee par les threads
void *thd_rdv (void *arg) {
  int monNum = *(int *)arg;	

  srand(pthread_self());

  printf("Thread %d (%lu) : J'effectue un traitement en parallele avec les autres\n",
		  monNum, pthread_self());	  
  attenteAleatoire();

  printf("Thread %d (%lu) : J'arrive au RdV\n", monNum, pthread_self());	  
  passerRdV(monNum);

  printf("Thread %d (%lu) : Je continue un traitement en parallele avec les autres\n",	  
		  monNum, pthread_self());	  
  attenteAleatoire();
  
  pthread_exit((void *)NULL);
}

#define NB_MAX_THREADS 30

//---------------------------------------------------------------------
int main(int argc, char *argv[]) {
  pthread_t idThds[NB_MAX_THREADS];
  int rangs[NB_MAX_THREADS];
  int i, etat;

  if (argc != 2) {
    printf("Usage : %s nombreDeThreads\n", argv[0]);
    exit(1);    
  }

  nbThreads = atoi(argv[1]);
  if (nbThreads > NB_MAX_THREADS)
     nbThreads = NB_MAX_THREADS;

  // Initialiser le(s) semaphore(s) utilise(s)
  if (pthread_mutex_init(&mutex, NULL) != 0){
    perror("Impossible d'initialiser le mutex");
    exit(12);
  }
  semaphores = (sem_t*)malloc(sizeof(sem_t) * nbThreads);
  for (int i = 1; i < nbThreads; i++){
    if (sem_init(semaphores + i, 0, 0) != 0){
      perror("Impossible d'initialiser les semaphores");
      exit(11);
    }
  }
  compteur = 0;

  // Lancer les threads
  for (i = 0; i < nbThreads; i++) {
    rangs[i] = i;	  
    if ((etat = pthread_create(&idThds[i], NULL, thd_rdv, &rangs[i])) != 0)
      thdErreur(etat, "Creation thd ", NULL);
  }

  // Attendre leur fin
  for (i = 0; i < nbThreads; i++) {
    if ((etat = pthread_join(idThds[i], NULL)) != 0)
      thdErreur(etat, "Join thread 1", NULL);
  }

  // Detruire le(s) semaphore(s) utilise(s)
  /* A completer */

  printf ("\nFin de l'execution du thread principal \n");
  return 0;
}