#include "consultation.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>

void viewPerson(Infos* p){
  printf("Nom : %s\n", p->name);
  printf("Age : %d\n", p->age);
  printf("Nombre d'enfants : %d\n", p->nChildren);
}

int consultation(char* filename){
  Infos info;
  int nInfos = 0;

  int fd = open(filename, O_RDONLY);
  int ans;

  if (fd == -1){
    perror("Impossible d'ouvrir' le fichier");
    exit(1);
  }

  while (read(fd, &info, sizeof(Infos)) != 0){
    ++nInfos;
  }

  printf("Nombre de fiches : %d\n", nInfos);

  printf("N° de la fiche a afficher (-1 pour quitter): ");
  scanf("%d", &ans);

  while (ans >= 0){
    if (ans >= nInfos) {
      printf("Numéro de fiche trop élevé\n");
    } else {
      lseek(fd, ans * sizeof(Infos), SEEK_SET);
      read(fd, &info, sizeof(Infos));
      viewPerson(&info);
    }
    printf("N° de la fiche a afficher (-1 pour quitter): ");
    scanf("%d", &ans);
  }

  close(fd);

  return 0;
}
