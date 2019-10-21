#ifndef HANOI
#define HANOI

#include "pile.h"

typedef pile_t Jeu[3]

void initialiserJeu(int n, Jeu tours);
  for (int i = 0; i < 3; i++){
    init_pile(tours + i);
  }

  for (int i = n; > -1; i--){
    empiler(tours + i, i);
  }
}

#endif
