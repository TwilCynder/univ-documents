#include <stdio.h>
#include <math.h>
double x;

int main(int argc, char const *argv[]) {
  scanf("%lf", &x);
  x = sqrt(x);
  printf("Square root: %lf\n", x);

  return 0;
}
