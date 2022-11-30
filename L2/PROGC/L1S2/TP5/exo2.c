#include <stdio.h>

void min_max(int Tab[], int nbElt, int *pMin, int *pMax){
  int min = Tab[0], max = Tab[0];
  for (int i = 1; i < nbElt; i++){
    if (Tab[i] < min) min = Tab[i];
    if (Tab[i] > max) max = Tab[i];
  }
  *pMin = min ; *pMax = max;
}

void min_max_p(int Tab[], int nbElt, int **pMin, int **pMax){
  int *min = Tab, *max = Tab;
  for (int i = 1; i < nbElt; i++){
    if (Tab[i] < *min) min = Tab + i;
    if (Tab[i] > *max) max = Tab + i;
  }
  *pMin = min ; *pMax = max;
}

int main(int argc, char const *argv[]) {
  int min, max, *pMin, *pMax;
  int Tab[] = {2, 8, 6, 3, 21, 5, 656, 8, -1};

  min_max(Tab, 9, &min, &max);
  min_max_p(Tab, 9, &pMin, &pMax);

  printf("Min : %d \nMax : %d \npMin : %p \npMax : %p \n", min, max, pMin, pMax);

  return 0;
}
