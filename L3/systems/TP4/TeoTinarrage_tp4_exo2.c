#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

#define NB_FILS_MAX 16
#define NB_TOURS_MAX 10

#define VALEUR_BASE 5454

typedef struct {
  pid_t emetteur;
  int valeur_base;
  int valeur_inc;
} Info;

int* pipes; //on aurait pu faire un tableau statique du style pipes[NB_PROCESS_MAX * 2] mais j'ai essayé de ne pas utiliser de mémoire inutilement
int nb_fils;

void error(const char* msg, int code){
    perror(msg);
    exit(code);
}

void premier_fils(int nb_tours){

  int num_pipe_lecture = (nb_fils * 2) - 2;
  int num_pipe_ecriture = 1;

  for (int i = 0; i < nb_fils * 2; i++){
    if (i != num_pipe_ecriture && i != num_pipe_lecture) {
      if (close(pipes[i])) error("Fermeture pipes", 2); //on ferme tout sauf l'entrée du premier pipe et la sortie du dernier pipe
      printf("Process %d n° 0: fermeture pipe %d\n", getpid(), i);
    }
  }

  int pipe_lecture = pipes[num_pipe_lecture];
  int pipe_ecriture = pipes[num_pipe_ecriture];

  int count = 0;
  int result;
  Info info;

  info.emetteur = getpid();
  info.valeur_base = VALEUR_BASE;
  info.valeur_inc = 0;

  do {
    
    info.valeur_inc++;
    if (write(pipe_ecriture, &info, sizeof(info)) == -1) error("Ecriture", 3);
    printf("Processus de pid %d, n°1 dans l'anneau : j'envoie au n°2 l'info [%d - %d - %d]\n", getpid(), info.emetteur, info.valeur_base, info.valeur_inc);

    count++;
    if (count >= nb_tours){
        printf("Processur de pid %d : je me termine.\n", getpid());
        if (close(pipe_ecriture) == -1) error("Fermeture pipe entrée", 8);
        if (close(pipe_lecture) == -1) error("Fermeture pipe sortie", 9);
        exit(0);
    }
  } while ((result = read(pipe_lecture, &info, sizeof(info))) > 0);

    if (result == -1) error("Lecture", 3);
    fprintf(stderr, "Erreur : un fils s'est terminé avant la premier fils ");
}

void fils(int mon_num){ //en considérant que le premier numéro est 0, et que ce numéro ne sera jamais passé (car le premier fils a une fonction séparée)

  int num_pipe_lecture = (mon_num - 1) * 2;
  int num_pipe_ecriture = (mon_num * 2) + 1;

  for (int i = 0; i < nb_fils * 2; i++){
    if (i != num_pipe_ecriture && i != num_pipe_lecture){
      if (close(pipes[i])) error("Fermeture pipes", 2); //on ferme tout sauf l'entrée du premier pipe et la sortie du dernier pipe
      printf("Process %d n° %d: fermeture pipe %d\n", getpid(), mon_num, i);
    }
  }

  int pipe_lecture = pipes[num_pipe_lecture];
  int pipe_ecriture = pipes[num_pipe_ecriture];

  int result;
  Info info;

  info.emetteur = getpid();
  info.valeur_base = VALEUR_BASE;
  info.valeur_inc = 0;

  printf("PIPE LECTURE %d %d", mon_num, num_pipe_lecture);
  while ((result = read(pipe_lecture, &info, sizeof(info))) > 0){ 
    info.valeur_inc++;
    if (write(pipe_ecriture, &info, sizeof(info)) == -1) error("Ecriture", 3);
    printf("Processus de pid %d, n°%d dans l'anneau : j'envoie au n°%d l'info [%d - %d - %d]\n", getpid(), mon_num + 1, ((mon_num + 1) % nb_fils) + 1, info.emetteur, info.valeur_base, info.valeur_inc);
  }

    if (result == -1) error("Lecture", 3);

    if (close(pipe_ecriture) == -1) error("Fermeture pipe entrée", 8);
    if (close(pipe_lecture) == -1) error("Fermeture pipe sortie", 9);

    printf("Processur de pid %d : je me termine.\n", getpid());
    exit(0);
}

void stayInRange(int* value, int min, int max){
  if (*value < min) *value = min;
  if (*value > max) * value = max;
}

int main(int argc, char const *argv[])
{

  if (argc < 3){
    fprintf(stderr, "Usage : %s nombre_de_fils nombre_de_tours", argv[0]);
    exit(1);
  }

  nb_fils = atoi(argv[1]);
  stayInRange(&nb_fils, 1, NB_FILS_MAX);
  int nb_tours = atoi(argv[2]);
  stayInRange(&nb_tours, 1, NB_TOURS_MAX);

  pipes = (int*)malloc(sizeof(int) * nb_fils * 2);

  for (int i = 0; i < nb_fils; i++){
    if (pipe(pipes + (i * 2)) == -1) error("Création pipes", 1);
  }

  for (int i = 0; i < nb_fils; i++){
    switch(fork()){
      case -1:
        error("Impossible de fork", 20);
      case 0:
        if (i == 0) premier_fils(nb_tours);
        fils(i);
    }
  } 

  for (int i = 0; i < nb_fils; i++){
    wait(NULL);
  }

  return 0;
}
