#include <stdio.h>
#include <math.h>

#define MAXORDER 10
#define PRECISION 0.0000000001

double abs(double val){
  return (val > 0)? val : - val;
}

int isNear(double a, double b){
  return abs(a - b) < PRECISION;
}

int main(int argc, char const *argv[]) {
  double matrix[MAXORDER][MAXORDER];
  int order = 0, i, j;
  int symetry = 1;

  printf("Ordre de la matrice ?\n");
  scanf("%d", &order);

  printf("Valeurs ?\n");
  for (i = 0; i < order; i++){
    printf("Ligne %d : ", i);
    for (j = 0; j < order; j++){
      scanf("%lf", &matrix[i][j]);
      if (j < i && !isNear(matrix[i][j], matrix[j][i])) symetry = 0;
    }
  }

  printf("La matrice %s\n", (symetry) ? "est symétrique." : "n'est pas symétrique.");

  return 0;
}
