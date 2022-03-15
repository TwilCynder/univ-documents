#include <stdio.h>
#include <string.h>
#include "limace.h"
#include "erreurs.h"
#include "tai.h"


/* Codes de retour */
#define OK 0
#define HELP 1
#define ERR_NB_PARAM 2
#define ERR_MAT_IN 3
#define ERR_MAT_TYPE 4
#define ERR_MAT_DIM 5
#define ERR_MAT_OUT 6

void Syntaxe(void)
{
  Usage("Histogramme.mx HistogrammeCumule.mx\n"
        "-h\n");
}

void Description(void)
{
  Mesg("RÔLE\n");
  Mesg("\tCalcul de l'histogramme cumulé à partir d'un histogramme\n");
  Mesg("ARGUMENTS\n");
  Mesg("\tHistogramme.mx : fichier source (Matrix de Int 1 x 256)\n");
  Mesg("\tHistogrammeCumule.mx : fichier destination (Matrix de Int 1 x 256)\n");
  Mesg("OPTION\n");
  Mesg("\t-h : affichage de l'aide\n");
  Mesg("CODES DE RETOUR\n");
  Code(OK,"succès");
  Code(HELP,"aide demandée");
  Code(ERR_NB_PARAM,"nombre d'arguments incorrect");
  Code(ERR_MAT_IN,"erreur durant la lecture du fichier en entrée");
  Code(ERR_MAT_TYPE,"mauvais type de matrice (Matrix de Int)");
  Code(ERR_MAT_DIM,"dimensions de matrice incorrectes (1x256)");
  Code(ERR_MAT_OUT,"erreur durant le calcul du résultat");
}

int main(int argc, char *argv[])
{
  Matrix MatIn=NULL,MatOut=NULL;

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
    else /* un seul paramètre différent de -h */
	  {
	    Syntaxe();
	    return ERR_NB_PARAM;
	  }
	}
	/* Lecture de l'histogramme */
	MatIn=MatReadAsc(argv[1]);
	if (MatIn==NULL)
	{
    Erreur("Problème lors de la lecture de l'histogramme en entrée");
		return ERR_MAT_IN;
	}
	/* Verification du type de la matrice */
	if (MatType(MatIn)!=Int)
	{
    Erreur("L'histogramme doit être stocké dans une matrice de Int");
		MatFree(&MatIn);
		return ERR_MAT_TYPE;
	}
  /* Vérification des dimensions de la matrice */
	if ((MatNbRow(MatIn)!=1 || MatNbCol(MatIn)!=256))
	{
    Erreur("L'histogramme doit être stocké dans une matrice 1x256");
		MatFree(&MatIn);
		return ERR_MAT_DIM;
	}
	/* Calcul de l'histogramme cumulé */
	MatOut=Hist2CumHist(MatIn);
	if (MatOut==NULL)
	{
		Erreur("Problème lors du calcul de l'histogramme cumulé");
		MatFree(&MatIn);
		return ERR_MAT_OUT;
	}
	/* Écriture de la matrice résultat */
	MatWriteAsc(MatOut,argv[2]);
	/* Libération de la mémoire */
	MatFree(&MatIn);
	MatFree(&MatOut);
	return OK;
}
