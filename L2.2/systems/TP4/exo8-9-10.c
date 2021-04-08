#include "info.h"
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/types.h>

#define ERROR_OPEN 1 
#define ERROR_EMPTYFILE 2

void addPerson(Infos* p){
  printf("Nom : ");
  scanf("\n%s", p->name);
  printf("Age : ");
  scanf("\n%d", &p->age);
  printf("Nombre d'enfants : ");
  scanf("\n%d", &p->nChildren);
}

int creation(char const* filename){
  Infos info;
  int fd = creat(filename, S_IRWXU | S_IROTH);
  if (fd == -1){
    perror(filename);
    return ERROR_OPEN;
  }

  char t;

  do{
    addPerson(&info);
    write(fd, &info, sizeof(info));
    printf("Ajouter une autre fiche ? (y/n)");
    scanf("\n%c", &t);
  } while (t == 'y');

  close(fd);

  return 0;
}

void viewPerson(Infos* p){
  printf("Nom : %s\n", p->name);
  printf("Age : %d\n", p->age);
  printf("Nombre d'enfants : %d\n", p->nChildren);
}

int consultation(char const* filename){
  Infos info;
  int nInfos = 0;

  int fd = open(filename, O_RDONLY);
  int numFiche;

  if (fd == -1){
    perror("Impossible d'ouvrir' le fichier");
    return ERROR_OPEN;
  }

  nInfos = lseek(fd, 0, SEEK_END) / sizeof(Infos);

  printf("Nombre de fiches : %d\n", nInfos);

  if (nInfos == 0){
    return ERROR_EMPTYFILE;
  }

  printf("N° de la fiche a afficher (0 ou moins pour quitter): ");
  scanf("\n%d", &numFiche);
  numFiche--;

  while (numFiche >= 0){
    if (numFiche >= nInfos) {
      printf("Numéro de fiche trop élevé\n");
    } else {
      lseek(fd, numFiche * sizeof(Infos), SEEK_SET);
      read(fd, &info, sizeof(Infos));
      viewPerson(&info);
    }
    printf("N° de la fiche a afficher (-1 pour quitter): ");
    scanf("\n%d", &numFiche);
    numFiche--;
  }

  close(fd);

  return 0;
}

void promptCreation(){
  char filename[30];
  printf("Fichier à créer : ");
  scanf("%s", filename);
  creation(filename);
}

void promptConsultation(){
  char filename[30];
  printf("Fichier à ouvrir : ");
  scanf("%s", filename);
  if (consultation(filename) == ERROR_OPEN){
    printf("Impossible d'ouvrir le fichier indiqué\n");
  }
}

int main(int argc, char const *argv[]) {
  char ans;
  printf("Sélectionner une action : \nn : créer fichier \no : consulter fichier \nautre : quitter\n");
  scanf("%c", &ans);

  while (ans == 'n' || ans == 'o'){
    if (ans == 'n'){
      promptCreation();
    } else {
      promptConsultation();
    }
    printf("Sélectionner une action : \nn : créer fichier \no : consulter fichier \nautre : quitter\n");
    scanf("\n%c", &ans);
  }

  return 0;
}
