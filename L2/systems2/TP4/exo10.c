#include "creation.h"
#include "consultation.h"
#include <stdio.h>

void promptCreate(){
  char filename[30];
  printf("Fichier à créer : ");
  scanf("%s", filename);
  creation(filename);
}

void promptConsult(){
  char filename[30];
  printf("Fichier à ouvrir : ");
  scanf("%s", filename);
  consultation(filename);
}

int main(int argc, char const *argv[]) {
  char ans;
  printf("Sélectionner une action : \nn : créer fichier \no : consulter fichier \nautre : quitter");
  scanf("%c", &ans);

  while (ans == 'n' || ans == 'o'){
    if (ans == 'n'){
      promptCreate();
    } else {
      promptConsult();
    }
    printf("Sélectionner une action : \nn : créer fichier \no : consulter fichier \nautre : quitter");
    scanf("\n%c", &ans);
  }

  return 0;
}
