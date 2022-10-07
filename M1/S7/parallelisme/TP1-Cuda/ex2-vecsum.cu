#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include <assert.h>

/**
Max size 1024
*/
__global__ void kreduce(unsigned int *vec, int size){
  int tid = threadIdx.x;
  int gid = blockIdx.x * blockDim.x + tid;

	for(int offset=(size/2);offset >= 1;offset /= 2){
		if(tid < offset){
			vec[gid] += vec[gid+offset];
		}
		__syncthreads();
  }
  if (threadIdx.x == 0){
    vec[blockIdx.x] = vec[gid];
  }

  __syncthreads();

}

void reduce(unsigned int *vec, unsigned int *sum, int size){
	unsigned int *d_vec;

  unsigned int nbBlocks;

  if (size > 10){
    nbBlocks = 1 << (size - 10);
    size = 1024;
  } else {
    nbBlocks = 1;
    size = 1 << size; 
    printf("%d\n", size);
  }
  
  int bytes = size*sizeof(unsigned int);

	cudaMalloc((void **)&d_vec, bytes);
	cudaMemcpy(d_vec, vec, bytes, cudaMemcpyHostToDevice);

  kreduce<<<nbBlocks, size>>>(d_vec, size);

  if (nbBlocks > 1){
    kreduce <<<1, nbBlocks>>>(d_vec, nbBlocks);
  }

	cudaMemcpy(sum, d_vec, sizeof(unsigned int), cudaMemcpyDeviceToHost);
	cudaFree(d_vec);
}

/**
Change in how the size is managed : we now pass it as a log2 to the reduce function, which handles the 2^ization
*/
int main(int argc, char **argv)
{
  if (argc < 2){
    printf("Usage: <filename>\n");
    exit(-1);
  }
  int size;
  unsigned int *vec;
  FILE *f = fopen(argv[1],"r");
  fscanf(f,"%d\n",&size);
  if (size >= 20){
    printf("Size (%u) is too large: size is limited to 2^20\n",size);
    exit(-1);
  }

   vec = (unsigned int *) malloc(size * sizeof(unsigned int)); assert(vec);
  for (int i=0; i<size; i++){
    fscanf(f, "%u\n",&(vec[i]));
  }

  unsigned int sum;

	reduce(vec,&sum,size);

	printf("%u\n", sum);
}
