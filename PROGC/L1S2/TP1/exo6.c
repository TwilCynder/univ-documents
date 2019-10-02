#include <stdio.h>

int celsius, farenheit;

int main(int argc, char const *argv[]) {
  scanf("%d", &farenheit);
  celsius = (int)((5.0/9.0) * (farenheit - 32));
  printf("Température en degrés Celsius: %d\n", celsius);
  return 0;
}
