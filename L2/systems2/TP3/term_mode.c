#include "term_mode.h"
/* Term_non_canonique =================================
//  Permet de lire le clavier touche par touche, sans
// écho.
//===================================================*/
int Term_non_canonique (){
  struct termios term;
  tcgetattr( fileno(stdin), &term);/* lit les flags du terminal dans term */
  term.c_lflag &= ~ICANON;         /* mode non-canonique */
  term.c_lflag &= ~ECHO;           /* supprime l’écho */
  term.c_cc[VMIN]  = 1;            /* nombre min de caractères */
  term.c_cc[VTIME] = 1;            /* latence (timeout) 1/10e de seconde (0: pas de latence) */
  if (tcsetattr( fileno(stdin), TCSANOW, &term) < 0) /* écrit les flags depuis term */
  {
    perror("Term_non_canonique: problème d’initialisation ");
    return 0;
  }return 1;
}
/* Term_canonique =====================================
//  Mode normal du clavier: lecture par ligne et écho.
//===================================================*/
int Term_canonique (){
  struct termios term;/* retour en mode ligne */
  tcgetattr( fileno(stdin), &term);/* lit les flags du terminal dans term */
  term.c_lflag |= ICANON;          /* mode canonique */
  term.c_lflag |= ECHO;            /* rétablit l’écho */
  if (tcsetattr( fileno(stdin), TCSANOW, &term) < 0) /* écrit les flags depuis term */
  {
    perror("Term_canonique: problème d’initialisation ");
    return 0;
  }

  return 1;
}
