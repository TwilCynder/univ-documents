#include "omp.h"
#include "stdlib.h"
#include "stdio.h"

#define SIZE 10000
#define NBTHREADS 4

typedef int* Matrix;

typedef unsigned long long int Somme; // je le mets en typedef car j'ai souvent du le changer à cause de débordements de valeur

Matrix createMatrix(){
  Matrix m = malloc(sizeof(int) * SIZE * SIZE);
  for (int i = 0; i < SIZE; i++){
    for (int j = 0; j < SIZE; j++){
      m[i * SIZE + j] = i + j;
    }
  }
  return m;
}

void deleteMatrix(Matrix m){
  free(m);
}

int main (){
  Matrix m = createMatrix();
  double start, stop;

  Somme somme = 0;

  printf("Méthode\tSomme\tTemps d'éxécution\n");

  //SEQUENTIEL
  start = omp_get_wtime();
  for (int i = 0; i < SIZE; i++){
    for (int j = 0; j < SIZE; j++){
      somme += m[i * SIZE + j];
    }
  }
  stop = omp_get_wtime();
  printf("SEQUENTIEL\t%llu\t%f\n", somme, stop - start);

  //SOMMES PARTIELLES 1
  somme = 0;
  Somme sommesPartielles[NBTHREADS];
  for (int i = 0; i < NBTHREADS; i++){
    sommesPartielles[i] = 0;
  }
  start = omp_get_wtime();
  #pragma omp parallel num_threads(NBTHREADS)
  {
    int thread_n = omp_get_thread_num();
    #pragma omp for
    for (int i = 0; i < SIZE; i++){
      for (int j = 0; j < SIZE; j++){
        sommesPartielles[thread_n] += m[i * SIZE + j];
      }
    }
  }
  for (int i = 0; i < NBTHREADS; i++){
    somme += sommesPartielles[i];
  }

  stop = omp_get_wtime();
  printf("SOMMES PARTIELLES 1\t%llu\t%f\n", somme, stop - start);

  //SOMMES PARTIELLES 2
  somme = 0;
  start = omp_get_wtime();
  #pragma omp parallel num_threads(NBTHREADS)
  {
    Somme sommeLocale = 0;
    #pragma omp for
    for (int i = 0; i < SIZE; i++){
      for (int j = 0; j < SIZE; j++){
        sommeLocale += m[i * SIZE + j];
      }
    }

    #pragma omp critical
    somme += sommeLocale;
  }

  stop = omp_get_wtime();
  printf("SOMMES PARTIELLES 2\t%llu\t%f\n", somme, stop - start);

  //REDUCE
  somme = 0;
  start = omp_get_wtime();
  #pragma omp parallel for num_threads(NBTHREADS) reduction(+:somme)
  for (int i = 0; i < SIZE; i++){
    for (int j = 0; j < SIZE; j++){
      somme += m[i * SIZE + j];
    }
  }


  stop = omp_get_wtime();
  printf("REDUCTION\t%llu\t%f\n", somme, stop - start);

  free(m);
}