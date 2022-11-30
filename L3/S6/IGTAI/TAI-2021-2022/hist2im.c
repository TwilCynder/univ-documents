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
#define ERR_PAR_TYPE 6
#define ERR_IM_OUT 7

/* Nombre de lignes par défaut de l'image résultat */
#define DFLT_NB_ROW 200

void Syntaxe(void)
{
  Usage("[NbLig] Histogramme.mx ImageSortie.pgm\n"
        "-h\n");
}

void Description(void)
{
  Mesg("RÔLE\n");
  Mesg("\tReprésentation d'un histogramme sous forme d'une image\n");
  Mesg("ARGUMENTS\n");
  Mesg("\tNbLig : nombre de lignes de l'image résultat (200 par defaut)\n");
  Mesg("\t  (une échelle des niveaux de gris de 25 lignes est ajoutée sous l'histogramme)\n");
  Mesg("\tHistogramme.mx : fichier au format Matrix contenant l'histogramme\n");
  Mesg("\tImageSortie.pgm : nom du fichier image (PGM) destination\n");
  Mesg("OPTION\n");
  Mesg("\t-h : affichage de l'aide\n");
  Mesg("CODES DE RETOUR\n");
  Code(OK,"succès");
  Code(HELP,"aide demandée");
  Code(ERR_NB_PARAM,"nombre d'arguments incorrect");
  Code(ERR_MAT_IN,"erreur durant la lecture du fichier en entrée");
  Code(ERR_MAT_TYPE,"mauvais type de matrice (Matrix de Int)");
  Code(ERR_MAT_DIM,"dimensions de matrice incorrectes (1x256)");
  Code(ERR_PAR_TYPE,"le nombre de ligne doit être un entier strictement positif");
  Code(ERR_IM_OUT,"erreur durant le calcul du résultat");
}

int main(int argc, char *argv[])
{
	Matrix MatIn=NULL;
	Image ImOut=NULL;
	int NbLig;
	char *fIn,*fOut;

  /* Initialisation de la gestion des messages d'erreur */
  InitMesg(argv);
  /* Vérification du nombre d'arguments */
	if (argc==1 || argc>4)
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
	if (argc==4)
	{
	  if (sscanf(argv[1],"%d",&NbLig) && NbLig>0)
	  {
	    fIn=argv[2];
	    fOut=argv[3];
	  }
	  else
	  {
	    Erreur("Le nombre de ligne doit être un entier strictement positif");
	    Syntaxe();
	    return ERR_PAR_TYPE;
	  }
	}
	else
	{
	  NbLig=DFLT_NB_ROW;
	  fIn=argv[1];
	  fOut=argv[2];
	}

	MatIn=MatReadAsc(fIn);
	if (MatIn==NULL)
	{
		Erreur("Erreur durant la lecture de l'histogramme en entrée");
		return ERR_MAT_IN;
	}
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
	ImOut=Hist2Im(MatIn,NbLig);
	if (ImOut==NULL)
	{
		Erreur("Problème lors de la formation de l'image de l'histogramme");
		MatFree(&MatIn);
		return ERR_IM_OUT;
	}
  /* Écriture de l'image résultat */
	ImWrite(ImOut,fOut);
  /* Libération de la mémoire */
	MatFree(&MatIn);
	ImFree(&ImOut);
	return OK;
}
