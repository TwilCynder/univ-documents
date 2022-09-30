gcc exercice4-parallel.c -fopenmp -o exo -DNB_THREADS=$1
./exo pb$2.txt