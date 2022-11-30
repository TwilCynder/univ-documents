#include <stdio.h>
unsigned char x;

int main(int argc, char const *argv[]) {
  scanf("%hhu", &x);
  x = x * x;
  printf("Square : %hhu\n", x);

  return 0;
}
//LE résultat est erroné pour une entrée de 16 car 16² = 256, valeur dépassant le maximum d'un uchar (255)
