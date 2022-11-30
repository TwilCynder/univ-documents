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
#define ERR_MAT_IN 5
#define ERR_MAT_TYPE 6
#define ERR_MAT_DIM 7
#define ERR_IM_OUT 8

void Syntaxe(void)
{
  Usage("ImageEntree.pgm lut.mx ImageSortie.pgm\n"
        "-h\n");
}

void Description(void)
{
  Mesg("RÔLE\n");
  Mesg("\tApplication d'une transformation ponctuelle à une image de niveaux de gris\n");
  Mesg("ARGUMENTS\n");
  Mesg("\tImageEntree : nom du fichier en entrée (format PGM) contenant l'image\n");
  Mesg("\tlut.mx : nom du fichier (format Matrix 1x256) contenant la LUT \n");
  Mesg("\tImageSortie : nom du fichier en sortie (format PGM)\n");
  Mesg("OPTION\n");
  Mesg("\t-h : affichage de l'aide\n");
  Mesg("CODES DE RETOUR\n");
  Code(OK,"succès");
  Code(HELP,"aide demandée");
  Code(ERR_NB_PARAM,"nombre d'arguments incorrect");
  Code(ERR_IM_IN,"erreur durant la lecture du fichier contenant l'image en entrée");
  Code(ERR_IM_TYPE,"mauvais type d'image (doit être niveaux de gris)");
  Code(ERR_MAT_IN,"erreur durant la lecture du fichier contenant la LUT en entrée");
  Code(ERR_MAT_TYPE,"mauvais type de matrice contenant la LUT (Matrix de Int)");
  Code(ERR_MAT_DIM,"dimensions de matrice contenant la LUT incorrectes (1x256)");
  Code(ERR_IM_OUT,"erreur durant le calcul du résultat");
}

int main(int argc, char *argv[])
{
  Image ImIn=NULL, ImOut=NULL;
  Matrix LUT=NULL;

  /* Initialisation de la gestion des messages d'erreur */
  InitMesg(argv);
  /* Vérification du nombre d'arguments */
	if (argc==1 || argc==3 || argc>=5)
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
	  else /* un seul paramètre différent de -h */
	  {
	    Syntaxe();
	    return ERR_NB_PARAM;
	  }
	}
	/* Lecture de l'image source */
	ImIn=ImRead(argv[1]);
	if (ImIn==NULL)
	{
    Erreur("Erreur durant la lecture de l'image en entrée");
		return ERR_IM_IN;
	}
  /* Vérification du type de l'image */
	if (ImType(ImIn)!=GrayLevel)
	{
    Erreur("L'image doit être en niveaux de gris");
		ImFree(&ImIn);
		return ERR_IM_TYPE;
	}

	/* Lecture de la transformation ponctuelle */
	LUT=MatReadAsc(argv[2]);
	if (LUT==NULL)
	{
		Erreur("Erreur durant la lecture de la transformation ponctuelle (LUT)");
		ImFree(&ImIn);
		return ERR_MAT_IN;
	}
	/* Vérification du type de la matrice */
	if (MatType(LUT)!=Int)
	{
		Erreur("La LUT doit être une matrice de Int");
		ImFree(&ImIn);
		MatFree(&LUT);
		return ERR_MAT_TYPE;
	}
  /* Vérification des dimensions de la matrice */
  if ((MatNbRow(LUT)!=1 || MatNbCol(LUT)!=256))
  {
    Erreur("La LUT doit être stockée dans une matrice 1x256");
    ImFree(&ImIn);
    MatFree(&LUT);
  return ERR_MAT_DIM;
  }
	/* Application de la transformation ponctuelle */
	ImOut=AppLUT(ImIn,LUT);
	if (ImOut==NULL)
	{
    Erreur("Erreur durant le calcul de l'image résultat");
		ImFree(&ImIn);
		MatFree(&LUT);
		return ERR_IM_OUT;
	}
  /* Écriture de l'image en sortie */
	ImWrite(ImOut,argv[3]);
	/* Libération de la mémoire */
	ImFree(&ImIn);
	MatFree(&LUT);
	ImFree(&ImOut);
	return OK;
}
