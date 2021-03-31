#include <stdio.h>
#include "rng.h"
int main() {
  RNG generator = rng_initialize(0);
  for (int i=0; i<100; ++i)
    printf( "%d\n", rng_get_value(&generator, 16) );
  return 1;
}

