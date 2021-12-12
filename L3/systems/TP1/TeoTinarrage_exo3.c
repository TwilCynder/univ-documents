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

//J'avais tu temps à la fin du TP du coup j'ai fait ça (ça marche pareil que srand()/rand() a priori)
unsigned int _rand_seed = 0;

void my_srand(unsigned int seed_){
    _rand_seed = seed_;
}

unsigned int my_rand(){
    return (_rand_seed = ( (_rand_seed * 214013) + 2531011) & 0xFFFFFFFF); 
}

/*---------------------
 * Variable globale
 ---------------------*/

int somme;

/*------------------------------------------------------------------------
 * Affichage de l'identite de l'appelant 
  ------------------------------------------------------------------------*/
void afficher (int rang, pthread_t thdId, int val) {
  printf("Thread compagnon de rang %d, identifié par %lu, j'ai ajouté %d à la valeur qui vaut à présent %d\n", rang, thdId, val, somme);
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
    int val = my_rand() % 10;
    somme += val;
    afficher(*(int*)arg, pthread_self(), val);
    
    int* result = malloc(sizeof(int));
    *result = val;
    pthread_exit((void*)result);
}

/*------------------------------------------------------------------------*/
int main(int argc, char *argv[]) {
  int i, nbThreads, etat;
  pthread_t idThreads[NB_THREADS_MAX];
  int rangs[NB_THREADS_MAX];

  my_srand(time(NULL));

  somme = 0;

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
  pthread_t threadPrincipal = pthread_self();
  
  for (i= 0; i < nbThreads; i++) {
    if ((etat = pthread_join(idThreads[i], (void**)&res)) != 0)
      thdErreur("Echec join", etat, 0); 
    else {
        printf("Thread principal %lu : valeur retournée par le thread %lu = %d\n", threadPrincipal, idThreads[i], *res);
    }
  }
  printf("Thread principal %lu : la valeur vaut %d\n", threadPrincipal, somme);
  return 0;
}