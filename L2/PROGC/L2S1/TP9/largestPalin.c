#include <stdlib.h>
#include <stdio.h>
#include <stdbool.h>

#define NMAX 20

typedef int Tab[NMAX];

bool palindrome(Tab T, int f, int l){
  l = (((l - f) - 1 ) / 2);
  for (int k = 0; k <= l; k++){
    if (T[f + k] != T[l - k]) {
      return false;
    }
  }
  return true;
}

int bruteForce(Tab T, int* first, int* last){
  int l;
  int max = 0; //max sera en fait la longueur du palindrome - 1. Ca nous évite un +1 au moment de le mettre à jour
  for (int i = 0; i < NMAX - 1; i++){
    for (int j = i + 1; j < NMAX; j++){
      if (palindrome(T, i, j) && j - i > max){
        max = j - 1;
        *first = i;
        *last = j;
      }
    }
  }
}

int bruteForceOpt(Tab T, int* first, int* last){ //Version optimisée, toujours 3 boucles mais la complexité devrait être plus proche de O(N³/2) que que de O(N³)
  int l;
  int max = 0; //max sera en fait la longueur du palindrome - 1. Ca nous évite un +1 au moment de le mettre à jour
  for (int i = 0; i < NMAX - 1; i++){
    for (int j = i + max + 1; j < NMAX; j++){ //en commençant à j + max + 1 on évite de tester des séquences qui sont de toute façon plus petite que le plus grand palindrome déjà trouvé
      if (palindrome(T, i, j) && j - i > max){
        max = j - 1;
        *first = i;
        *last = j;
      }
    }
  }
}
