#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

#define MAX_NUM_OBJ 100

#ifndef NB_THREADS
#define NB_THREADS 4
#endif 

int num_obj = 0;
int capacity;
int weight[MAX_NUM_OBJ];
int utility[MAX_NUM_OBJ];

#define S_(I, J) *(S + ((I) * (capacity + 1)) + (J)) 

void read_problem(char *filename){
  char line[256];

  FILE *problem = fopen(filename,"r");
  if (problem == NULL){
    fprintf(stderr,"File %s not found.\n",filename);
    exit(-1);
  }

  while (fgets(line, 256, problem) != NULL){
    switch(line[0]){
    case 'c': // capacity
      if (sscanf(&(line[2]),"%d\n", &capacity) != 1){
	fprintf(stderr,"Error in file format in line:\n");
	fprintf(stderr, "%s", line);
	exit(-1);
      }
      break;

    case 'o': // graph size
      if (num_obj >= MAX_NUM_OBJ){
	fprintf(stderr,"Too many objects (%d): limit is %d\n", num_obj, MAX_NUM_OBJ);
	exit(-1);
      }
      if (sscanf(&(line[2]),"%d %d\n", &(weight[num_obj]), &(utility[num_obj])) != 2){
	fprintf(stderr,"Error in file format in line:\n");
	fprintf(stderr, "%s", line);
	exit(-1);
      }
      else
	num_obj++;
      break;

    default:
      break;
    }
  }
  if (num_obj == 0){
    fprintf(stderr,"Could not find any object in the problem file. Exiting.");
    exit(-1);
  }

}

int main (int argc, char** argv){

  double t,start,stop;

  if (argc != 2) {
    fprintf(stderr, "Usage : %s problem_descriptor_file\n", argv[0]);
    exit(1);
  }

  read_problem(argv[1]); //populates weight[] and utility[]

  start = omp_get_wtime();

  int* S = malloc(sizeof(int) * num_obj * (capacity + 1));

  #pragma omp parallel for num_threads(NB_THREADS)
  for (int j = 0; j <= capacity; j++){
    S_(0, j) = (weight[0] > j) ? 0 : utility[0];
  }

  for (int i = 1; i < num_obj; i++){
    #pragma omp parallel for num_threads(NB_THREADS)
    for (int j = 0; j <= capacity; j++){
      if (weight[i] > j){
        S_(i, j) = S_(i - 1, j);
      } else {
        int prev_utility = S_(i-1, j); // utilité max avec l'obj précédent
        int potential_utility = S_(i-1, j - weight[i]) + utility[i]; // utilité max précédente pour une capacité qui permettrait d'ajouter l'objet, + l'utilité de l'objet
        S_(i, j) = (prev_utility > potential_utility) ? prev_utility : potential_utility;
      }
    }
  }


  int* E = malloc(sizeof(int) * num_obj);
  int capacity_ = capacity;

  for (int i = num_obj - 1; i > 0; i--){
    if (S_(i, capacity_) > S_(i - 1, capacity_)){ //l'objet i a été inclus
      capacity_ -= weight[i];
      E[i] = 1;
    } else {
      E[i] = 0;
    }
  }

  stop=omp_get_wtime();
  t=stop-start;

  if (S_(0, capacity_) > 0) E[0] = 1;

  free(S);

  /*printf("Les objets choisis sont ");
  for (int i = 0; i < num_obj; i++){
    if (E[i])
      printf("%d ", i);
  }
  printf(".\n");*/
  free(E);

  printf("Temps d'éxécution de l'algo (avec %d threads): %f\n", NB_THREADS, t);


}