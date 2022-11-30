#include <stdio.h>
#include <string.h>

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

void Replace(char Ch[], FILE* Source, FILE* Dest){
  char c ;

  c = fgetc(Source);
  while(c != EOF){
    if (c == Ch[0]) c = Ch[1];
    fputc(c, Dest);
    c = fgetc(Source);
  }
}

int main(int argc, char const *argv[]) {
  char err[75] = "Can't open ";
  char Ch[3];
  char path[64];
  FILE *source, *dest;

  LireLigne(Ch, 2, stdin);

  LireLigne(path, 63, stdin);
  source = fopen(path, "r");

  strcat(err, path);
  if (!source){
    perror(err);
    return 1;
  }

  LireLigne(path, 63, stdin);
  dest = fopen(path, "w");

  strcat(err, path);
  if (!dest){
    perror(err);
    return 1;
  }

  Replace(Ch, source, dest);

  return 0;
}
