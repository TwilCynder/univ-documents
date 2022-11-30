#include <stdio.h>
long x;

int main(int argc, char const *argv[]) {
  scanf("%ld", &x);
  x = x * x;
  printf("Square : %ld\n", x);

  return 0;
}
