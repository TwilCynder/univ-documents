#include <stdio.h>
#include <string.h>
#include "limace.h"
#include "erreurs.h"
#include "tai.h"


/* Codes de retour */
#define OK 0
#define HELP 1
#define ERR_NB_PARAM 2
#define ERR_HC_IN 3
#define ERR_HC_TYPE 4
#define ERR_HC_DIM 5
#define ERR_HCD_IN 6
#define ERR_HCD_TYPE 7
#define ERR_HCD_DIM 8
#define ERR_MAT_OUT 9

void Syntaxe(void)
{
  Usage("HistogrammeCumule.mx HistogrammeCumuleDesire.mx lut.mx\n"
        "-h\n");
}

void Description(void)
{
  Mesg("RÔLE\n");
  Mesg("\tSpécification d'histogramme :\n");
  Mesg("\tcalcul de la transformation ponctuelle à partir des histogrammes cumulés\n");
  Mesg("ARGUMENTS\n");
  Mesg("\tHistogrammeCumule.mx : histogramme cumulé initial (Matrix de Int 1x256)\n");
  Mesg("\tHistogrammeCumuleDesire.mx : histogramme cumulé desiré (Matrix de Int 1x256)\n");
  Mesg("\tlut.mx : transformation ponctuelle obtenue (Matrix de Int 1x256)\n");
  Mesg("OPTION\n");
  Mesg("\t-h : affichage de l'aide\n");
  Mesg("CODES DE RETOUR\n");
  Code(OK,"succès");
  Code(HELP,"aide demandée");
  Code(ERR_NB_PARAM,"nombre d'arguments incorrect");
  Code(ERR_HC_IN,"erreur durant la lecture de l'histogramme cumulé initial");
  Code(ERR_HC_TYPE,"mauvais type de matrice contenant l'histogramme cumulé initial (Matrix de Int)");
  Code(ERR_HC_DIM,"dimensions de la matrice contenant l'histogramme cumulé initial incorrectes (1x256)");
  Code(ERR_HCD_IN,"erreur durant la lecture de l'histogramme cumulé initial");
  Code(ERR_HCD_TYPE,"mauvais type de matrice contenant l'histogramme cumulé initial (Matrix de Int)");
  Code(ERR_HCD_DIM,"dimensions de la matrice contenant l'histogramme cumulé initial incorrectes (1x256)");
  Code(ERR_MAT_OUT,"erreur durant le calcul du résultat");
}

int main(int argc, char *argv[])
{
  Matrix HistCum=NULL,HistCumDes=NULL,Lut=NULL;

  /* Initialisation de la gestion des messages d'erreur */
  InitMesg(argv);
  /* Vérification du nombre d'arguments */
	if (argc==1 || argc ==3 || argc>=5)
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
	/* Lecture de l'histogramme cumulé */
	HistCum=MatReadAsc(argv[1]);
	if (HistCum==NULL)
	{
		Erreur("Erreur durant la lecture de l'histogramme cumulé");
		return ERR_HC_IN;
	}
	/* Vérification du type de la matrice */
	if (MatType(HistCum)!=Int)
	{
		Erreur("L'histogramme cumulé doit être une matrice de Int");
		MatFree(&HistCum);
		return ERR_HC_TYPE;
	}
	/* Vérification des dimensions de la matrice */
	if ((MatNbRow(HistCum)!=1 || MatNbCol(HistCum)!=256))
	{
		Erreur("L'histogramme cumulé doit être stocké dans une matrice 1x256");
		MatFree(&HistCum);
		return ERR_HC_DIM;
	}
	/* Lecture de l'histogramme cumulé desiré */
	HistCumDes=MatReadAsc(argv[2]);
	if (HistCumDes==NULL)
	{
		Erreur("Erreur durant la lecture de l'histogramme cumulé desiré");
		return ERR_HCD_IN;
	}
	/* Vérification du type de la matrice */
	if (MatType(HistCumDes)!=Int)
	{
    Erreur("L'histogramme cumulé désiré doit être une matrice de Int");
		MatFree(&HistCum);
		MatFree(&HistCumDes);
		return ERR_HCD_TYPE;
	}
  /* Vérification des dimensions de la matrice */
	if ((MatNbRow(HistCumDes)!=1 || MatNbCol(HistCumDes)!=256))
	{
    Erreur("L'histogramme cumulé désiré doit être stocké dans une matrice 1x256");
		MatFree(&HistCum);
		MatFree(&HistCumDes);
		return ERR_HCD_DIM;
	}

	/* Calcul de la transformation ponctuelle */
	Lut=HistSpecif(HistCum,HistCumDes);
	if (Lut==NULL)
	{
		Erreur("Erreur durant le calcul de la transformation ponctuelle");
		MatFree(&HistCum);
		MatFree(&HistCumDes);
		return ERR_MAT_OUT;
	}
	/* Écriture de la matrice résultat */
	MatWriteAsc(Lut,argv[3]);
	/* Libération de la mémoire */
	MatFree(&HistCum);
	MatFree(&HistCumDes);
	MatFree(&Lut);
	return OK;
}
