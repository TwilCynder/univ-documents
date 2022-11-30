#include "sudoku.h"

/* Partie 1 : Completer l'une OU l'autre des deux fonctions */


int maxCandidatRegion(T_sudoku s, int indiceRegion){

  T_coordonnees topleft; //première case de la région
  topleft.colonne = 3 * (indiceRegion % 3);
  topleft.ligne = 3 * (indiceRegion / 3);

  int max = 0;
  T_case* s_case;
  for (int x = topleft.colonne; x < topleft.colonne + 3; x++){
    for (int y = topleft.ligne; y < topleft.ligne + 3; y++){
      s_case = s.grille + (y * 9) + x;
      for (int i = 0; i < s_case->n_candidats;i++){
        if (s_case->candidats[i] > max) max = s_case->candidats[i];
      }
    }
  }

  return max;
}


void transposerSudoku(T_sudoku* s_initial){

  /* A completer */

}

/* Partie 2 : Completer la fonction */

void ajouterCandidat(T_case* s_case, int value){

  if (s_case->val != 0){
    s_case->candidats[0] = s_case->val;
    s_case->val = 0;
    if (s_case->val == value){
          s_case->n_candidats = 1;
          return;
    }
    s_case->candidats[1] = value;
    s_case->n_candidats = 2;
    return;
  }

  int val1, val2;
  int i = 0;
  while (s_case->candidats[i] <= value  && i < s_case->n_candidats) {
    if (s_case->candidats[i] == value) return;
    i += 1;
  }

  if (i >= s_case->n_candidats){
    s_case->candidats[i] = value;
    s_case->n_candidats += 1;
    return;
  }

  val1 = s_case->candidats[i];
  s_case->candidats[i] = value;

  do {
    i += 1;
    val2 = s_case->candidats[i];
    s_case->candidats[i] = val1;
    val1 = val2;

  } while(i < s_case->n_candidats);


  s_case->n_candidats += 1;

}
