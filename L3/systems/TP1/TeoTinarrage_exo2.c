/**-------------------------------------------------------------------------
  TP1 - Squelette code exercice 1-V2
  Compilation : gcc tp1_exo1-v2_base.c -o exo1b -lpthread
--------------------------------------------------------------------------**/

#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>

#define NB_THREADS_MAX  10
#define NB_FOIS         10

unsigned int _rand_seed = 0;

void my_srand(unsigned int seed_){
    _rand_seed = seed_;
}

unsigned int my_rand(){
    return (_rand_seed = ( (_rand_seed * 214013) + 2531011) & 0xFFFFFFFF); 
}

/*------------------------------------------------------------------------
 * Affichage de l'identite de l'appelant 
  ------------------------------------------------------------------------*/
void afficher (int rang, pthread_t thdId, int res) {
  printf("Thread compagnon de rang %d, identifié par %lu, je mourrai en retournant %d\n", rang, thdId, res);
}

/*------------------------------------------------------------------------
 Fonction d'affichage d'une erreur selon la cause de l'echec d'une primitive
 Arret du thread si arret positionne a 1
  ------------------------------------------------------------------------*/
void thdErreur (char *msg, int cause, int arret) {
  printf("%s : %s \n", msg, strerror(cause));
  if (arret) pthread_exit(NULL);
}

/*------------------------------------------------------------------------
 Code execute par chaque thread 
  ------------------------------------------------------------------------*/

void *thd_afficher (void *arg) { 
    int* res = malloc(sizeof(int));
    *res = my_rand() % 10;
    afficher(*(int*)arg, pthread_self(), *res);
    pthread_exit((void*)res);
}

/*------------------------------------------------------------------------*/
int main(int argc, char *argv[]) {
  int i, nbThreads, etat;
  pthread_t idThreads[NB_THREADS_MAX];
  int rangs[NB_THREADS_MAX];

    //J'avais tu temps à la fin du TP du coup j'ai fait ça (ça marche pareil que srand()/rand() a priori)
  my_srand(time(NULL));

  if (argc != 2) {
    printf("Usage : %s <Nb Threads>\n", argv[0]);
    exit(1);
  }
  nbThreads = atoi(argv[1]);
  if (nbThreads > NB_THREADS_MAX)
    nbThreads = NB_THREADS_MAX;

  /* Creation des threads */
  for (i = 0; i < nbThreads; i++) {
    rangs[i] = i;
    if ((etat = pthread_create(idThreads + i, NULL, thd_afficher, rangs + i)) != 0)
      thdErreur("Echec create", etat, 0);
  }


  /* Attendre la fin des threads  */

  int *res;
  unsigned int somme = 0;
  pthread_t threadPrincipal = pthread_self();
  
  for (i= 0; i < nbThreads; i++) {
    if ((etat = pthread_join(idThreads[i], (void**)&res)) != 0)
      thdErreur("Echec join", etat, 0); 
    else {
        printf("Thread principal %lu : valeur retournée par le thread %lu = %d\n", threadPrincipal, idThreads[i], *res);
        somme += *res;
    }
  }
  printf("Thread principal %lu : somme des valeurs retournées = %d\n", threadPrincipal, somme);
  return 0;
}