#include <stdio.h>
#include <stdlib.h>

typedef struct{
  int** mat; //lignes
  int m; //nombre de lignes
  int n; //nombre de colonnes = taille des lignes
} Matrix;

Matrix nullMatrix = {0, 0, 0};

void testAllocation(void* vec){
  if (vec == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }
}

Matrix createMatrix(int n, int m){
  Matrix mat;
  mat.mat = (int**)malloc(m * sizeof(int*));
  testAllocation(mat.mat);

  mat.m = m; mat.n = n;
  for (int i = 0; i < mat.m; i++){
    mat.mat[i] = (int*)malloc(n * sizeof(int));
    testAllocation(mat.mat[i]);
  }
  return mat;
}

int getElement(Matrix mat, int n, int m){ //getter et setter permettant de se passer de la syntaxe mat.mat[m][n], peu intuitive
  return mat.mat[m][n];
}

int* getElementPtr(Matrix mat, int n, int m){
  return &(mat.mat[m][n]);
}
void setElement(Matrix* mat, int n, int m, int val){
  mat->mat[m][n] = val;
}

Matrix multMatrix(Matrix m1, Matrix m2){
  if (m1.n != m2.m){
    fprintf(stderr, "Les dimensions des matrices ne sont pas compatibles\n");
    return nullMatrix;
  }


  Matrix res = createMatrix(m2.n, m1.m);
  int sum;


  for (int i = 0; i < res.m; i++){
    for (int j = 0; j < res.n; j++){
      sum = 0;
      for (int k = 0; k < m1.n; k++){
        sum += getElement(m1, k, i) * getElement(m2, j, k);
      }
      setElement(&res, j, i, sum);
    }
  }
  return res;
}

void promptMatrix(Matrix mat){
  for (int i = 0; i < mat.m; i++){
    for (int j = 0; j < mat.n; j++){
      scanf("%d", getElementPtr(mat, j, i));
    }
  }
}

void viewMatrix(Matrix mat){
  for (int i = 0; i < mat.m; i++){
    for (int j = 0; j < mat.n; j++){
      printf("%d ", getElement(mat, j, i));
    }
    printf("\n");
  }
}

int main(int argc, char const *argv[]) {
  int n, m;
  printf("Taille de la matrice 1 : ");
  scanf("%d %d", &n, &m);
  if (!(n > 0 || m > 0)){
    printf("La taille de la matrice doit être un couple d'entiers strictement positifs");
    exit(2);
  }
  Matrix m1 = createMatrix(n, m);
  promptMatrix(m1);

  printf("Taille de la matrice 2 : ");
  scanf("%d %d", &n, &m);
  if (!(n > 0 || m > 0)){
    printf("La taille de la matrice doit être un couple d'entiers strictement positifs");
    exit(2);
  }
  Matrix m2 = createMatrix(n, m);
  promptMatrix(m2);

  Matrix m3 = multMatrix(m1, m2);
  if (m3.mat == 0){
    exit(3);
  }

  viewMatrix(m3);

  return 0;
}
