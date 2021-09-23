#include <stdio.h>

float power_iterative(float x, int n){
  int res = 1;
  for (int i = 0; i < n; i++){
    res *= x;
  }
  return res;
}

float power_recursive(float x, int n){
  if (n == 0) return 1;
  if (n == 1) return x;
  return x * power_recursive(x, n - 1);
}

int main(int argc, char const *argv[]) {
  int n, res, res_iter, res_recur;
  float x;

  printf("x = ");
  scanf("%f", &x);

  printf("Test jusqu'a n = ");
  scanf("%d", &n);

  for (int i = 0; i < n; i++){
    res_iter = power_iterative(x, i);
    res_recur = power_recursive(x, i);
    res = (res_iter == res_recur);

    printf("Test de %f^%d  :  %d\n", x, i, res);
    //printf("\t Iterative : %d\n", res_iter);
    //printf("\t Recursive : %d\n", res_recur);
  }

  return 0;
}

scanf("%d %d")
