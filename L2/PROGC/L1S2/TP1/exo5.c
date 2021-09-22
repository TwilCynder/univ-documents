#include <stdio.h>
int a, b, c;

int main(int argc, char const *argv[]) {
  scanf("%d %d", &a, &b);
  c = a;
  a = b;
  b = c;
  printf("%d %d", a, b);
  return 0;
}
