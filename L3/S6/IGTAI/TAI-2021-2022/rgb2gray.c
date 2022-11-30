#include <stdio.h>
#include <string.h>
#include "limace.h"
#include "erreurs.h"
#include "tai.h"

/* Codes de retour */
#define OK 0
#define HELP 1
#define ERR_NB_PARAM 2
#define ERR_IM_IN 3
#define ERR_IM_TYPE 4
#define ERR_IM_OUT 4

void Syntaxe(void)
{
  Usage("ImageEntree.ppm ImageSortie.pgm\n"
        "-h\n");
}

void Description(void)
{
  Mesg("RÔLE\n");
  Mesg("\tConversion d'une image couleur en une image de niveaux de gris\n");
  Mesg("ARGUMENTS\n");
  Mesg("\tImageEntree : nom du fichier en entrée (format PPM)\n");
  Mesg("\tImageSortie : nom du fichier en sortie (format PGM)\n");
  Mesg("OPTION\n");
  Mesg("\t-h: affiche l'aide\n");
  Mesg("CODES DE RETOUR\n");
  Code(OK,"succès");
  Code(HELP,"aide demandée");
  Code(ERR_NB_PARAM,"nombre d'arguments incorrect");
  Code(ERR_IM_IN,"erreur durant la lecture du fichier en entrée");
  Code(ERR_IM_TYPE,"mauvais type d'image (doit être niveaux de gris)");
  Code(ERR_IM_OUT,"erreur durant le calcul du résultat");
}

int main(int argc, char *argv[])
{
  Image ImIn=NULL, ImOut=NULL;

  /* Initialisation de la gestion des messages d'erreur */
  InitMesg(argv);
  /* Vérification du nombre d'arguments */
  if (argc==1 || argc>3)
  {
    Syntaxe();
    return ERR_NB_PARAM;
  }
  if (argc==2)
  {
    if (!strcmp(argv[1],"-h"))
    {
      Syntaxe();
      Description();
      return HELP;
    }
    else /* un paramètre mais pas -h */
    {
      Syntaxe();
      return ERR_NB_PARAM;
    }
  }
  /* Lecture de l'image en entrée */
  ImIn=ImRead(argv[1]);
  if (ImIn==NULL)
  {
    Erreur("Erreur durant la lecture de l'image en entrée");
    return ERR_IM_IN;
  }
  /* Vérification du type de l'image */
  if (ImType(ImIn)!=Color)
  {
    Erreur("L'image doit être en couleur");
    ImFree(&ImIn);
    return ERR_IM_TYPE;
  }
  /* Transformation de l'image */
  ImOut=RGB2Gray(ImIn);
  if (ImOut==NULL)
  {
    Erreur("Erreur durant le calcul de l'image résultat");
    ImFree(&ImIn);
    return ERR_IM_OUT;
  }
  /* Écriture de l'image en sortie */
  ImWrite(ImOut,argv[2]);
  /* Libération de la mémoire occupée par les images */
  ImFree(&ImIn);
  ImFree(&ImOut);
  return OK;
}
