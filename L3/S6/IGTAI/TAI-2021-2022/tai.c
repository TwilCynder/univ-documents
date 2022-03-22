 #include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <float.h>
#include "limace.h"
#include "tai.h"

#define DEBOGAGE

#ifdef DEBOGAGE
#define DEBUG fprintf(stderr,"Fichier %s, ligne %d\n",__FILE__,__LINE__);
#else
#define DEBUG
#endif

#define AFAIRE(fonction) fprintf(stderr,"Corps de la fonction " #fonction \
                                        " à écrire.\n" ); \
												 return NULL;

#define RED_WEIGHT 0.299 
#define GREEN_WEIGHT 0.587
#define BLUE_WEIGHT 0.114

/*
 * Conversion d'une image couleur en une image de niveaux de gris
 * Entrée : image initiale en couleur
 * Sortie : image de niveaux de gris résultat
 */
Image RGB2Gray(Image Im)
{
  Image ImRes = ImAlloc(GrayLevel, ImNbRow(Im), ImNbCol(Im));
  unsigned char** redMat = ImGetR(Im);
  unsigned char** blueMat = ImGetB(Im);
  unsigned char** greenMat = ImGetG(Im);
  unsigned char** greyMat = ImGetI(ImRes);

  for (int x = 0; x < ImNbRow(Im) ; x++){
    for (int y = 0; y < ImNbCol(Im); y++){
      greyMat[x][y] = round( redMat[x][y] * RED_WEIGHT + greenMat[x][y] * GREEN_WEIGHT + blueMat[x][y] * BLUE_WEIGHT);
    }
  }

  return ImRes;
}


/*
 * Binarisation d'une image de niveaux de gris par seuillage global
 * Entrées : image de niveaux de gris initiale
             seuil (niveau de gris)
 * Sortie : image binaire
 */
Image Binarization(Image Im, unsigned char Threshold)
{
  Image ImRes = ImAlloc(BitMap, ImNbRow(Im), ImNbCol(Im)); 
  unsigned char** greyMat = ImGetI(Im);
  unsigned char** bitMat  = ImGetI(ImRes);
  
  for (int x = 0; x < ImNbRow(Im) ; x++){
    for (int y = 0; y < ImNbCol(Im); y++){
      bitMat[x][y] = (greyMat[x][y] >= Threshold);
    }
  }

  return ImRes;
}


/*
 * Calcul de l'histogramme d'une image de niveaux de gris
 * Entrée : image initiale (niveaux de gris)
 * Sortie : histogramme (matrice de int 1 x 256)
 */
Matrix Histogram(Image Im)
{
  Matrix res = MatCAlloc(Int, 1, 256);
  int** hist = MatGetInt(res);
  unsigned char** greyMat = ImGetI(Im);

  for (int x = 0; x < ImNbRow(Im) ; x++){
    for (int y = 0; y < ImNbCol(Im); y++){
      ++hist[0][greyMat[x][y]];
    }
  }

  return res;
}


/*
 * Représentation d'un histogramme sous forme d'une image
 * Entrées : histogramme (matrice de int 1 x 256) et nombre de lignes de
 * l'image résultat (une échelle des niveaux de gris de 25 lignes est ajoutée
 * sous l'histogramme)
 * Sortie : image de niveaux de gris résultat
 */
Image Hist2Im(Matrix Hist, int NbLig)
{
	unsigned char **I;
	int *h,i,j,Max=0,NbCol=256,NbLig2=NbLig+25;
	Image Res;

	if (MatType(Hist)!=Int) return NULL;
  NbLig2=NbLig+25;
	Res=ImCAlloc(GrayLevel,NbLig2,NbCol);
  if (Res==NULL) return NULL;
	h=*MatGetInt(Hist);
	for (j=0;j<NbCol;j++)
		if (h[j]>Max) Max=h[j];
	I=ImGetI(Res);
	for (j=0;j<256;j++)
		for (i=NbLig-1;i>=(NbLig-NbLig*h[j]/Max);i--)
		    I[i][j]=255;
  for (j=0;j<256;j++)
    I[NbLig][j]=0;
  for (i=NbLig+1;i<NbLig2;i++)
    for (j=0;j<256;j++)
      I[i][j]=j;
	return Res;
}


/*
 * Calcul de l'histogramme cumulé à partir de l'histogramme
 * Entrée : histogramme (matrice de int 1 x 256)
 * Sortie : histogramme cumulé (matrice de int 1 x 256)
 */
Matrix Hist2CumHist(Matrix Hist)
{
  Matrix res = MatCAlloc(Int, 1, 256);
  int** histCum = MatGetInt(res);
  int** hist = MatGetInt(Hist);

  histCum[0][0] = hist[0][0];
  for (int i = 1 ; i < 256; i++){
    histCum[0][i] = histCum[0][i-1] + hist[0][i];
  }

  return res;
}


/*
 * Application d'une transformation ponctuelle à une image de niveaux de gris
 * Entreés : image initiale (niveaux de gris) et
 * transformation ponctuelle (matrice de int 1 x 256)
 * Sortie : image de niveaux de gris transformée
 */
Image AppLUT(Image Im, Matrix LUT)
{
  int** LUTMat = MatGetInt(LUT);
  unsigned char** greyMat = ImGetI(Im);
  Image res = ImAlloc(GrayLevel, ImNbRow(Im), ImNbCol(Im));
  unsigned char** resMat = ImGetI(res);

  for (int x = 0; x < ImNbRow(Im) ; x++){
    for (int y = 0; y < ImNbCol(Im); y++){
      resMat[x][y] = LUTMat[0][greyMat[x][y]];
    }
  }

  return res;
}


/*
 * Spécification d'histogramme
 * Entrées : histogramme cumulé de l'image et histogramme cumulé desiré
 * (on suppose que le dernier élément des deux histogrammes cumulés sont
 * les mêmes, c'est-à-dire qu'ils décrivent des images contenant le même nombre
 * de pixels)
 * Sortie : transformation ponctuelle (matrice 1 x 256)
 */
Matrix HistSpecif(Matrix CumHist, Matrix DesCumHist)
{
  AFAIRE(HistSpecif);
}


/*
 * Égalisation de l'histogramme d'une image de niveaux de gris
 * par la méthode de l'"approximation continue"
 * Entrée : image initiale de niveaux de gris
 * Sortie : image résultat
 */
Image HistogramEqualization(Image Im)
{
  AFAIRE(HistogramEqualization);
}


/*
 * Vérification de la validité d'une matrice représentant un élément
 * structurant binaire (pour l'érosion, la dilatation, etc.)
 * Entrée : matrice représentant un élément structurant
 * Sortie : 0 si la matrice est valide,
            SE_NOT_ODD si son nombre de lignes ou de colonnes n'est pas impair
            SE_NOT_INT si elle ne contient pas que des entiers
            SE_NOT_BIN si elle ne contient pas que des 0 et des 1
*/
int NotValidBinSE(Matrix StructuringElement)
{
  int **ES,NbLig,NbCol,i,j;

  if (MatType(StructuringElement)!=Int)
    return SE_NOT_INT;
  NbLig=MatNbRow(StructuringElement);
	if ((NbLig%2)!=1)
	  return SE_NOT_ODD;
  NbCol=MatNbCol(StructuringElement);
	if ((NbCol%2)!=1)
	  return SE_NOT_ODD;
  ES=MatGetInt(StructuringElement);
  for (i=0;i<NbLig;i++)
    for (j=0;j<NbCol;j++)
      if (ES[i][j]!=0 && ES[i][j]!=1)
        return SE_NOT_BIN;
  return 0;
}


/*
 * Vérification de la validité d'une matrice représentant un élément
 * structurant ternaire (pour la transformation "tout ou rien")
 * Entrée : matrice représentant un élément structurant
 * Sortie : 0 si la matrice est valide,
            SE_NOT_ODD si son nombre de lignes ou de colonnes n'est pas impair
            SE_NOT_INT si elle ne contient pas que des entiers
            SE_NOT_TERN si elle ne contient pas que des 0, des 1 et des 2
*/
int NotValidTernSE(Matrix StructuringElement)
{
  int **ES,NbLig,NbCol,i,j;

  if (MatType(StructuringElement)!=Int)
    return SE_NOT_INT;
  NbLig=MatNbRow(StructuringElement);
	if ((NbLig%2)!=1)
	  return SE_NOT_ODD;
  NbCol=MatNbCol(StructuringElement);
	if ((NbCol%2)!=1)
	  return SE_NOT_ODD;
  ES=MatGetInt(StructuringElement);
  for (i=0;i<NbLig;i++)
    for (j=0;j<NbCol;j++)
      if (ES[i][j]!=0 && ES[i][j]!=1 && ES[i][j]!=2)
        return SE_NOT_TERN;
  return 0;
}


/*
 * Amincissement d'une image binaire
 * Entreés : image binaire initiale et élément structurant (matrice de int
 * contenant uniquement des 0, des 1 et des 2 signifiant "peu importe")
 * Sortie : image binaire transformée
 */
Image Thinning(Image Im, Matrix StructuringElement)
{
  AFAIRE(Thinning);
}
