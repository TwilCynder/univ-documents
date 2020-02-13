#undef _POSIX_C_SOURCE
#define _POSIX_C_SOURCE 199309L /* Norme POSIX 199309 : IEEE Std 1003.1b-1993*/
#include <sys/termios.h>        /* le terminal non canonique */
#include <stdio.h>

int Term_non_canonique ();
int Term_canonique ();
