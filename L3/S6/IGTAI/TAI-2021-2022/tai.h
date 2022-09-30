#ifndef __tai_h_
#define __tai_h_

#include <stddef.h>
#include "limace.h"

/*
 * Conversion d'une image couleur en une image de niveaux de gris
 * Entrée : image initiale en couleur
 * Sortie : image de niveaux de gris résultat
 */
extern Image RGB2Gray(Image Im);

/*
 * Binarisation d'une image de niveaux de gris par seuillage global
 * Entrées : image de niveaux de gris initiale
             seuil (niveau de gris)
 * Sortie : image binaire
 */
extern Image Binarization(Image Im, unsigned char Threshold);

/*
 * Calcul de l'histogramme d'une image de niveaux de gris
 * Entrée : image initiale (niveaux de gris)
 * Sortie : histogramme (matrice de int 1 x 256)
 */
extern Matrix Histogram(Image Im);

/*
 * Représentation d'un histogramme sous forme d'une image
 * Entrées : histogramme (matrice de int 1 x 256) et nombre de lignes de
 * l'image résultat (une échelle des niveaux de gris de 25 lignes est ajoutée
 * sous l'histogramme)
 * Sortie : image de niveaux de gris résultat
 */
extern Image Hist2Im(Matrix Hist, int NbLig);

/*
 * Calcul de l'histogramme cumulé à partir de l'histogramme
 * Entrée : histogramme (matrice de int 1 x 256)
 * Sortie : histogramme cumulé (matrice de int 1 x 256)
 */
extern Matrix Hist2CumHist(Matrix Hist);

/*
 * Application d'une transformation ponctuelle à une image de niveaux de gris
 * Entreés : image initiale (niveaux de gris) et
 * transformation ponctuelle (matrice de int 1 x 256)
 * Sortie : image de niveaux de gris transformée
 */
extern Image AppLUT(Image Im, Matrix LUT);

/*
 * Spécification d'histogramme
 * Entrées : histogramme cumulé de l'image et histogramme cumulé desiré
 * (on suppose que le dernier élément des deux histogrammes cumulés sont
 * les mêmes, c'est-à-dire qu'ils décrivent des images contenant le même nombre
 * de pixels)
 * Sortie : transformation ponctuelle (matrice 1 x 256)
 */
extern Matrix HistSpecif(Matrix CumHist, Matrix DesCumHist);

/*
 * Égalisation de l'histogramme d'une image de niveaux de gris
 * par la méthode de l'"approximation continue"
 * Entrée : image initiale de niveaux de gris
 * Sortie : image résultat
 */
extern Image HistogramEqualization(Image Im);

/*
 * Vérification de la validité d'une matrice représentant un élément
 * structurant binaire (pour l'érosion, la dilatation, etc.)
 * Entrée : matrice représentant un élément structurant
 * Sortie : 0 si la matrice est valide,
            SE_NOT_ODD si son nombre de lignes ou de colonnes n'est pas impair
            SE_NOT_INT si elle ne contient pas que des entiers
            SE_NOT_BIN si elle ne contient pas que des 0 et des 1
*/
#define SE_NOT_ODD 1
#define SE_NOT_INT 2
#define SE_NOT_BIN 3
extern int NotValidBinSE(Matrix StructuringElement);

/*
 * Vérification de la validité d'une matrice représentant un élément
 * structurant ternaire (pour la transformation "tout ou rien")
 * Entrée : matrice représentant un élément structurant
 * Sortie : 0 si la matrice est valide,
            SE_NOT_ODD si son nombre de lignes ou de colonnes n'est pas impair
            SE_NOT_INT si elle ne contient pas que des entiers
            SE_NOT_TERN si elle ne contient pas que des 0, des 1 et des 2
*/
#define SE_NOT_TERN 4
extern int NotValidTernSE(Matrix StructuringElement);

/*
 * Amincissement d'une image binaire
 * Entreés : image binaire initiale et élément structurant (matrice de int
 * contenant uniquement des 0, des 1 et des 2 signifiant "peu importe")
 * Sortie : image binaire transformée
 */
extern Image Thinning(Image Im, Matrix StructuringElement);



#endif /* !__tai_h_ */
