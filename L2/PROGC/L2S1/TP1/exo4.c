#include <stdio.h>

int get_val(int n){
  if (n < 1) return 0;

  int m = 1, i = 1;

  while(n > m){
    i++;
    m += i;
  }
  return i;
}

void hard_test(int n){ //affiche toute la suite jusqu'à u(n), pour les tests uniquement
  for (int i = 0; i < n ; i ++){
    printf("%d\n", get_val(i));
  }
}

int main(int argc, char const *argv[]) {
  int n;

  printf("Valeur n° ");
  scanf("%d", &n);

  printf("%d\n", get_val(n));

  return 0;
}
