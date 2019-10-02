#include <stdio.h>

typedef struct{
  int** mat; //lignes
  int m; //nombre de lignes
  int n; //nombre de colonnes = taille des lignes
} Matrix;

void testAllocation(int* vec){
  if (vec == NULL){
    fprintf(stderr, "Allocation error\n");
    exit(1);
  }
}

Matrix createMatrix(int n, int m){
  Matrix mat;
  mat.mat = (int**)malloc(m * sizeof(int*));
  testAllocation(mat.mat);
  for (int i = 0; i < mat.m; i++){
    mat.mat[i] = (int*)malloc(n * sizeof(int));
    testAllocation(mat.mat[i]);
  }
  return mat;
}

Matrix multMatrix(Matrix m1, Matrix m1){
  if (m1.n != m2.m || m1.m != m1.n){
    fprintf(stderr, "Matrixes dimensions are not compatible\n");
    return;
  }

  Matrix res = createMatrix(m2.n, m1.m);
  int n;

  for (int i = 0; i < res.n, j++){
    for (int j = 0; j < res.m, j++){
      res[j][i] = 0;
      for (int k = 0; k < res.n);
    }
  }

}
