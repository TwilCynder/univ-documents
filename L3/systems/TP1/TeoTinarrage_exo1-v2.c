/**-------------------------------------------------------------------------
  TP1 - Squelette code exercice 1-V2
  Compilation : gcc tp1_exo1-v2_base.c -o exo1b -lpthread
--------------------------------------------------------------------------**/

#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>

#define NB_THREADS_MAX  10
#define NB_FOIS         10

int nbAffichages;

/*------------------------------------------------------------------------
 * Affichage de l'identite de l'appelant 
  ------------------------------------------------------------------------*/
void afficher (int rang, pthread_t thdId) {
  printf("Je suis le thread de rang %d, mon identificateur est %lu\n", rang, thdId);
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
  int i;

  for (i = 0; i < nbAffichages ; i++){
      afficher(*(int*)arg, pthread_self());  //arg est un void*, on doit le caster en int* avant de pouvoir le déréférencer (*)
  }
    
  pthread_exit(NULL);
}

/*------------------------------------------------------------------------*/
int main(int argc, char *argv[]) {
  int i, nbThreads, etat;
  pthread_t idThreads[NB_THREADS_MAX];
  int rangs[NB_THREADS_MAX];

  if (argc != 2) {
    printf("Usage : %s <Nb Threads>\n", argv[0]);
    exit(1);
  }
  nbThreads = atoi(argv[1]); 
  if (nbThreads > NB_THREADS_MAX) //On vérifie que le nombre de thread indiqué n'est pas trop grand
    nbThreads = NB_THREADS_MAX; 

  printf("Combien d'affichages du message ?\n");
  scanf("%d", &nbAffichages);

  /* Creation des threads */
  for (i = 0; i < nbThreads; i++) {
    rangs[i] = i; //Il est nécessaire de garder un tableau contenant chaque valeur de i, car on doit passer un pointeur à pthread_create, on ne peut donc pas lui passer directement i
                  //(Bon pour être vraiment 100% optimal on aurait pu juste passer i, en le castant en (void*), et en le recastant en int dans thd_afficher, mais le cast d'entier vers pointeur va bien sûr larguement à l'encontre des bonnes pratiques, même si techniquement ça marche )
    if ((etat = pthread_create(idThreads + i, NULL, thd_afficher, rangs + i)) != 0)
      thdErreur("Echec create", etat, 0);
  }
  /* Attendre la fin des threads  */
  for (i= 0; i < nbThreads; i++) {
    if ((etat = pthread_join(idThreads[i], NULL)) != 0){
      thdErreur("Echec join", etat, 0); 
    }

  }
  return 0;
}