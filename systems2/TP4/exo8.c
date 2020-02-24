#include "exo8.h"
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <sys/types.h>

char* gets(char*);

void addPerson(Infos* p){
  printf("Nom : ");
  //gets(p->name);
  scanf("\n%s", p->name);
  printf("Age : ");
  scanf("\n%d", &p->age);
  printf("Nombre d'enfants : ");
  scanf("\n%d", &p->nChildren);
}

int creation(char* filename){
  Infos info;
  int fd = creat(filename, S_IRWXU | S_IROTH);
  int t;

  do{
    addPerson(&info);
    write(fd, &info, sizeof(info));
    printf("Ajouter une autre fiche ? (y/n)");
    fflush(stdin);
    t = getchar();
    //fflush(stdin);
  } while (t == 'y');

  close(fd);

  return 0;
}

int main(int argc, char const *argv[]) {
  creation("data");
  return 0;
}
