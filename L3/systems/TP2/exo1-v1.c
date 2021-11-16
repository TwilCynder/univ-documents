/*
 * TP2 - Squelette exercice 1 - Affichage alterne de N threads
 * Parametre = Nombre de threads
 * Ressource partagee = ecran
 * Objectif de la synchronisation : que les threads utilisent cet
 * ecran a tour de role, de maniere coherente
 *
 * Pour tester avec la temporisation par usleep, il faut definir
 * la constante lors de la compilation grace a l'option -D :
 * gcc tp23_exo1_base.c -oexo1b -DTEMPO -lpthread -Wall
 * Rappel : Votre synchronisation doit marcher avec ou sans cette
 * temporisation
 */
#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>
#include <pthread.h>

#define NB_THREADS_MAX  20

enum {
    ERROR_SEM_P = 1,
    ERROR_SEM_V
};

typedef struct {
  int monRang;		// Rang de creation du thread
  int nbThreads;	// Nombre de threads de l'application 
  int nbMsg;		// Nombre de messages a afficher
  int nbLignes;		// Nombre de lignes de chaque message
} Parametres;

pthread_mutex_t mutex[NB_THREADS_MAX];

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
void attenteAleatoire (int rang) {
#ifdef TEMPO	
    usleep((rand()%100) * (rang + 1));	  
#endif
}

//---------------------------------------------------------------------
// Pour simplifier l'utilisation des semaphores et avoir un code qui
// ressemble a ce qui a ete ecrit en TD, on peut implanter l'equivalent
// des operations P et V pour les reutiliser dans les solutions
//
// Implanter l'operation P
void P ( pthread_mutex_t* mutex ) {
  int res = pthread_mutex_lock(mutex);
  if (res != 0){
    thdErreur(res, "Erreur opération P", NULL);
  }
}

// Implanter l'operation V
void V ( pthread_mutex_t* mutex ) {
  int res = pthread_mutex_unlock(mutex);
  if (res != 0){
    thdErreur(res, "Erreur opération V", NULL);
  }
}

//---------------------------------------------------------------------
// Synchronisation a completer en utilisant les operations P et V ecrites
//
// Demander a acceder a l'ecran 
void demanderAcces(int rangThread) { 
  P(&mutex[rangThread]);
}

// Liberer l'acces a l'ecran 
void libererAcces(int rangThread, int numThreads) { 
  V(&mutex[(rangThread + 1) % numThreads]);
}

//---------------------------------------------------------------------
// Fonction executee par un thread : afficher un message un certain nombre
// de messages a l'ecran constitues de nbLignes lignes
void *thd_afficher (void *arg) {
  int i, j;
  Parametres param = *(Parametres *)arg;

#ifdef TRACE  
  printf("Afficheur %d/%d (%lu), je demarre %d msg de %d lignes \n", 
            param.monRang, param.nbThreads, pthread_self(), param.nbMsg, param.nbLignes);
#endif
  srand(pthread_self());

  for (i = 0; i < param.nbMsg; i++) {
    // Acceder a l'ecran pour afficher un message complet a l'ecran
    demanderAcces(param.monRang);

    for (j = 0; j < param.nbLignes; j++) {
      printf("Afficheur %d (%lu), j'affiche ligne %d/%d du message %d/%d \n", 
             param.monRang, pthread_self(), j+1, param.nbLignes, i+1, param.nbMsg);
      attenteAleatoire(param.monRang);
    } 
    // Rendre l'acces a l'ecran 
    libererAcces(param.monRang, param.nbThreads);
  }

  printf("Afficheur %d (%lu), je me termine \n", param.monRang, pthread_self());
  /* Se terminer sans renvoyer de compte-rendu */
  pthread_exit((void *)NULL);
}

//---------------------------------------------------------------------
#define NB_LIGNES_BASE 2 // Pourrait etre parametre de l'application
#define NB_MSG_BASE    4 // ou etre different pour chaque thread

int main(int argc, char*argv[]) {
  pthread_t idThdAfficheurs[NB_THREADS_MAX];
  Parametres param[NB_THREADS_MAX];
  int i, etat, nbThreads;

  if (argc != 2) {
    printf("Usage : %s <Nb de threads>\n", argv[0]);
    exit(1);
  }

  nbThreads = atoi(argv[1]);
  if (nbThreads > NB_THREADS_MAX)
    nbThreads = NB_THREADS_MAX;

  // Initialiser le(s) semaphore(s) utilise(s)
  for (int i = 0; i < nbThreads; i++){
      if (pthread_mutex_init(&mutex[i], NULL) != 0){
        perror("Impossible d'initaliser les mutex");
        exit(11);
      }
  }

  for (int i = 1; i < nbThreads; i++){
      P(&mutex[i]);
  }

  // Lancer les threads afficheurs
  for (i = 0; i < nbThreads; i++) {
    param[i].monRang   = i;
    param[i].nbThreads = nbThreads;
    param[i].nbMsg     = NB_MSG_BASE;
    param[i].nbLignes  = NB_LIGNES_BASE;
    if ((etat = pthread_create(&idThdAfficheurs[i], NULL, thd_afficher, &param[i])) != 0)
      perror("Erreur création thread afficheurs");
      exit(12);
  }

  // Attendre la fin des threads afficheur car si le thread principal
  // - i.e. le main() - se termine, les threads crees meurent aussi
  for (i = 0; i < nbThreads; i++) {
    if ((etat = pthread_join(idThdAfficheurs[i], NULL)) != 0)
      thdErreur(etat, "Join threads afficheurs", NULL);
  }

  // Detruire le(s) semaphore(s) utilise(s)
  for (int i = 0; i < nbThreads; i++){
      if (pthread_mutex_destroy(&mutex[i]) != 0){
        perror("Impossible de détruire les Mutex");
        exit(13);
      }
  }

  printf ("\nFin de l'execution du thread principal \n");
  return 0;
}
