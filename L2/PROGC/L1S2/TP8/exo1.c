#include <stdio.h>
#include <string.h>

typedef struct{
  int nbMots;
  float longMoy;
} tStats;

char *LireLigne(char Ch[], int LongueurMax, FILE *f)
{
  char Format[32]; /* Chaine qui va contenir le format passe a scanf */
  int Lu;

  /* Construction du format : %LongueurMax[^\n]
    %[^\n] signifie "tous les caracteres sauf \n"
    le gabarit permet de limiter la lecture a LongueurMax caracteres
  */
  sprintf(Format,"%%%d[^\n]",LongueurMax);

  /* Lecture de la ligne */
  Lu=fscanf(f,Format,Ch);
  if (Lu!=EOF) /* Si la fin du fichier n'a pas ete atteinte */
  {
    /* Vidage du tampon d'entree du fichier :
       - consommation de \n si la fin de la ligne a ete atteinte
       - consommation de la fin de la ligne jusqu'au \n si le nombre limite
         de caracteres a ete atteint
    */
    while (fgetc(f)!='\n')
      ;
    return Ch;
  }
  else
    return NULL;
}

void Stat(FILE *f, tStats* pStats){
  char word[64];
  int lenSum;

  pStats->nbMots = 0;

  fscanf(f, "%s", word);
  while (!feof(f)){

    pStats->nbMots++;
    lenSum += strlen(word);

    fscanf(f, "%s", word);
  }
  pStats->longMoy = (float)lenSum / pStats->nbMots;

}

int main(int argc, char const *argv[]) {
  char path[64];
  FILE* f;
  tStats stats;
  char err[75] = "Can't open ";

  LireLigne(path, 63, stdin);
  f = fopen(path, "r");

  strcat(err, path);

  if (!f){
    perror(err);
    return 1;
  }

  Stat(f, &stats);
  printf("Le fichier contient %d mots, d'une longueur moyenne de %f caractères.\n", stats.nbMots, stats.longMoy);

  return 0;
}
