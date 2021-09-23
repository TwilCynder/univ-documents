#include <stdio.h>

int main(int argc, char const *argv[]) {
  double values[100];
  int nb_val = 0;
  double sum = 0.0, moy = 0.0;

  printf("Nombre de valeurs ? (inférieur à 100 (soyez sympa j'ai eu la flemme de vérifier dans le code))\n");
  scanf("%d", &nb_val);

  printf("Valeurs ? \n");
  for (int i = 0; i < nb_val; i++){
    scanf("%lf", values + i);
    sum += values[i];
  }

  moy = (double)(sum / nb_val);
  printf("Moyenne : %lf \n", moy);

  printf("Valeurs supérieures à la moyenne : \n");
  for (int i = 0; i < nb_val; i++){
    if (values[i] > moy){
      printf("%lf\n", values[i];
    }
  }

  return 0;
}
