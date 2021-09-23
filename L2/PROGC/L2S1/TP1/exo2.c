#include <stdio.h>

void get_list(int T[], int n){
  for (int i = 0; i < n; i++){
    scanf("%d", T + i);
  }
}

int test_palindrome(int T[], int n){
  for (int i = 0; i < (n / 2); i++){
    if (T[i] != T[n-1 - i]){
      return 0;
    }
  }
  return 1;
}

int main(int argc, char const *argv[]) {
  int n;

  printf("Taille du vecteur : ");
  scanf("%d", &n);

  int T[n]; //alternative : utiliser malloc/calloc

  printf("Valeurs du vecteur : ");
  get_list(T, n);

  if (test_palindrome(T, n)){
    printf("La liste est un palindrome\n");
  } else {
    printf("La liste n'est pas un palindrome\n");
  }

  return 0;
}
