#include "creation.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

char* gets(char*);

void addPerson(Infos* p){
  printf("\nNom : ");
  scanf("%s", p->name);
  printf("Age : ");
  scanf("%d", &p->age);
  printf("Nombre d'enfants : ");
  scanf("%d", &p->nChildren);
}

int creation(char* filename){
  Infos info;
  int fd = creat(filename, S_IRWXU | S_IROTH);
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
