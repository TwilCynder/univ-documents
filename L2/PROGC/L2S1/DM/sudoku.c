#include "math.h" //il aurait fallu inclure ça dans sudoku.h mais je ne dois modifier que sudoku.c à priori
#include "sudoku.h"

enum {false, true};

/* Implanter les fonctions de sudoku.h ici */

T_coordonnees obtenirCoords(int indice){
    T_coordonnees coords;
    coords.colonne = indice % 9;
    coords.ligne = (indice - coords.colonne) / 9;
    return coords;
}

int obtenirIndice(T_coordonnees coords){
    return coords.ligne * 9 + coords.colonne;
}

T_coordonnees debutRegion(int indiceRegion){
    int rx, ry; // coordonées de la région (donc de 0 à 2)
    rx = indiceRegion % 3;
    ry = (indiceRegion - rx) / 3;
    return (T_coordonnees){ry * 3, rx * 3};
}

int indiceRegion(T_coordonnees coords){
    int rx, ry; // coordonées de la région (donc de 0 à 2)
    rx = floor(coords.colonne / 3); 
    ry = floor(coords.ligne / 3);
    return (ry * 3) + rx;
}

T_sudoku lireSudoku(char* chemin){
    T_sudoku sudoku;
    FILE* file = fopen(chemin, "r");
    for (int i = 0; i < 81; i++){
        fscanf(file, "%d", &sudoku.grille[i].val);
    }
    return sudoku;
}

void initialiserSudoku(T_sudoku* s){
    for (int i = 0; i < 81; i++){
        if (s->grille[i].val == 0){
            for (int j = 0; j < 9; j++){
                (s->grille[i]).candidats[j] = j + 1;
            }
            s->grille[i].n_candidats = 9;
	} else {
            for (int j = 0; j < 9; j++){
                (s->grille[i]).candidats[j] = 0;
            }
            s->grille[i].n_candidats = 0;
        }
    }
}

int rechercherValeur(int val, T_case c){
    for (int i = 0; i < c.n_candidats; i++){
        if (c.candidats[i] == val){
            return i;
        }
    }
    return c.n_candidats;
}

void supprimerValeur(int ival, T_case* pc){
    pc->candidats[ival] = pc->candidats[pc->n_candidats - 1];
    pc->candidats[pc->n_candidats - 1] = 0;
    pc->n_candidats--;
	
}

int supprimerValeur_(int val, T_case* pc){
    int iVal = rechercherValeur(val, *pc);
    if (iVal < pc->n_candidats){
        supprimerValeur(iVal, pc);
        return true;
    }
    return false;
}

int R1_case(T_case* pc){
    if (pc->n_candidats == 1){
        pc->val = pc->candidats[0];
        pc->candidats[0] = 0;
        pc->n_candidats = 0;
        return true;
    }
    return false;
}

int R1_sudoku(T_sudoku* ps){
    T_case *c1, *c2; //c1 : case sur laquelle on tente d'appliquer R1 | c2: case de la même ligne/colonne/région que c1 (pour si R1 a pu être appliquée)
    T_coordonnees coords1, coords2; //coordonnées de c1 et c2
    for (int i = 0; i < 81; i++){
        c1 = &ps->grille[i];
        if (R1_case(c1)){
            coords1 = obtenirCoords(i);
            coords2.colonne = coords1.colonne;
            coords2.ligne = coords1.ligne;
            for (coords2.ligne = 0; coords2.ligne < 9; coords2.ligne++){
                c2 = &ps->grille[obtenirIndice(coords2)];
                supprimerValeur(c1->val, c2);
            }
            coords2.ligne = coords1.ligne;
            for (coords2.colonne = 0; coords2.colonne < 9; coords2.colonne++){
                c2 = &ps->grille[obtenirIndice(coords2)];
                supprimerValeur(c1->val, c2);
            }
            for (coords2 = debutRegion(indiceRegion(coords2)); coords2.ligne < 3; coords2.ligne++){
                for (coords2.colonne = 0; coords2.colonne < 3; coords2.colonne++){
                    c2 = &ps->grille[obtenirIndice(coords2)];
                    supprimerValeur(c1->val, c2);
                }
            }
        }
    }
}

int R2_case(int indCase, T_sudoku* ps){
    T_case *c1, *c2; //la case d'indice indCase | c2: case testée (de la même ligne/colonne/région que c1)
    T_coordonnees coords1, coords2; //coordonnées de c1 et c2
    int regleAppliquee = 0;
    coords1 = obtenirCoords(indCase);
    c1 = &ps->grille[indCase];

    coords2.colonne = coords1.colonne;
    coords2.ligne = coords1.ligne;
    for (coords2.ligne = 0; coords2.ligne < 9; coords2.ligne++){
        c2 = &ps->grille[obtenirIndice(coords2)];
        if (c2->val > 0){
            regleAppliquee += supprimerValeur_(c2->val, c1);
        }
    }
    coords2.ligne = coords1.ligne;
    for (coords2.colonne = 0; coords2.colonne < 9; coords2.colonne++){
        c2 = &ps->grille[obtenirIndice(coords2)];
        if (c2->val > 0){
            regleAppliquee += supprimerValeur_(c2->val, c1);
        }
    }
    for (coords2 = debutRegion(indiceRegion(coords2)); coords2.ligne < 3; coords2.ligne++){
        for (coords2.colonne = 0; coords2.colonne < 3; coords2.colonne++){
            c2 = &ps->grille[obtenirIndice(coords2)];
            if (c2->val > 0){
                regleAppliquee += supprimerValeur_(c2->val, c1);
            }
        }
    }
    return regleAppliquee > 0;
}

int R2_sudoku(T_sudoku* ps){
    for (int i =0; i < 81; i++){
        R2_case(i, ps);
    }
}

int R3_case(int indCase, T_sudoku* ps){
    T_case *c1, *c2; //la case d'indice indCase | c2: case testée (de la même ligne/colonne/région que c1)
    T_coordonnees coords1, coords2; //coordonnées de c1 et c2
    int val, iVal, occurences;
    coords1 = obtenirCoords(indCase);
    c1 = &ps->grille[indCase];
    for (int i = 0; i < c1->n_candidats; i++){
        val = c1->candidats[i];
        coords2.colonne = coords1.colonne;
        coords2.ligne = coords1.ligne;
        occurences = 0;
        for (coords2.ligne = 0; coords2.ligne < 9; coords2.ligne++){
            c2 = &ps->grille[obtenirIndice(coords2)];
            iVal = rechercherValeur(val, *c2);
            if (iVal < c2->n_candidats){
                occurences++;
            }
        }
        if (occurences > 1){
            c1->val = val;
            c1->n_candidats = 0;
            return true;
        }

        coords2.ligne = coords1.ligne;
        occurences = 0;
        for (coords2.colonne = 0; coords2.colonne < 9; coords2.colonne++){
            c2 = &ps->grille[obtenirIndice(coords2)];
            iVal = rechercherValeur(val, *c2);
            if (iVal < c2->n_candidats){
                occurences++;
            }
        }
        if (occurences > 1){
            c1->val = val;
            c1->n_candidats = 0;
            return true;
        }

        occurences = 0;
        for (coords2 = debutRegion(indiceRegion(coords2)); coords2.ligne < 3; coords2.ligne++){
            for (coords2.colonne = 0; coords2.colonne < 3; coords2.colonne++){
                c2 = &ps->grille[obtenirIndice(coords2)];
                iVal = rechercherValeur(val, *c2);
                if (iVal < c2->n_candidats){
                    occurences++ ;
                }
            }
        }
        if (occurences > 1){
            c1->val = val;
            c1->n_candidats = 0;
            return true;
        }
    }
    return false;
}

int R3_sudoku(T_sudoku* ps){
    T_case *c1, *c2; //c1 : case sur laquelle on tente d'appliquer R1 | c2: case de la même ligne/colonne/région que c1 (pour si R1 a pu être appliquée)
    T_coordonnees coords1, coords2; //coordonnées de c1 et c2
    for (int i = 0; i < 81; i++){
        c1 = &ps->grille[i];
        if (R3_case(i, ps)){
            coords1 = obtenirCoords(i);
            coords2.colonne = coords1.colonne;
            coords2.ligne = coords1.ligne;
            for (coords2.ligne = 0; coords2.ligne < 9; coords2.ligne++){
                c2 = &ps->grille[obtenirIndice(coords2)];
                supprimerValeur(c1->val, c2);
            }
            coords2.ligne = coords1.ligne;
            for (coords2.colonne = 0; coords2.colonne < 9; coords2.colonne++){
                c2 = &ps->grille[obtenirIndice(coords2)];
                supprimerValeur(c1->val, c2);
            }
            for (coords2 = debutRegion(indiceRegion(coords2)); coords2.ligne < 3; coords2.ligne++){
                for (coords2.colonne = 0; coords2.colonne < 3; coords2.colonne++){
                    c2 = &ps->grille[obtenirIndice(coords2)];
                    supprimerValeur(c1->val, c2);
                }
            }
        }
    }
}

//ポルト - TwilCynder
