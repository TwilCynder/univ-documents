#include "pile.h"
#include <stdio.h>
#include <assert.h>

/**
 * Crée une pile vide.
 * @param p	Pile à initializer.
 */
void init_pile(pile_t *p){
  p->som = -1;
}

/**
 * Empile un élément dans la pile.
 * La pile ne doit pas être pleine.
 * @param p		Pile où empiler.
 * @param e		Elément à empiler.
 */
void empiler(pile_t *p, int e){
  if (p->som >= PILE_TAILLE - 1){
    return;
  }
  p->som += 1;
  p->elts[p->som] = e;
}


/**
 * Dépile l'élément en tête de pile.
 * La pile ne doit pas être vide !
 * @param p	Pile à dépiler.
 */
void depiler(pile_t *p){
  if (p->som == -1){
    return;
  }
  p->som -= 1;
}


/* ----------------------------------
            Accesseurs
   --------------------------------*/

/**
 * Récupère le sommet de pile.
 * La pile ne doit pas être vide !
 * @param p		Pile à accéder.
 * @return		Elément en tête de pile.
 */
int sommet(const pile_t *p){
  if (p->som == -1){
    return 0;
  }
  return p->elts[p->som];
}

/**
 * Teste si la pile est vide.
 * @param p		Pile à tester.
 * @return		TRUE si la pile est vide, FALSE sinon.
 */
bool pile_vide(const pile_t *p){
  return (p->som == -1);
}

/**
 * Test si la pile est elle pleine.
 * @param p		Pile à etster.
 * @return		TRUE si la pile est pleine, FALSE sinon.
 */
bool pile_pleine(const pile_t *p){
  return (p->som == PILE_TAILLE - 1);
}

/**
 *  Affiche le contenu de la pile sur la stortie standard.
 * @param p		Pile à afficher.
 */
void afficher_pile(const pile_t *p){
  for (int i = 0; i <= p->som ;i++){
    printf("%d ", p->elts[i]);
  }
  printf("\n");
}
