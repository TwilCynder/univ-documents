#! /usr/bin/python3

import time
import random
from mpi4py import MPI
import sys

if __name__ == '__main__':
    comm = MPI.COMM_WORLD

    nbTotal = 0
    if len(sys.argv) > 1:
      nbTotal = int(sys.argv[1])
    if nbTotal < 1:
      nbTotal = 100001

    rank = comm.Get_rank()
    nbProcesses = comm.Get_size()
    nbLocal = int(nbTotal / nbProcesses)
    nbTotal = nbLocal * nbProcesses #pour éviter les imprécisions si le nombre de processes ne divise pas nbTotal
    inside = 0
    random.seed(0)
    
    if rank == 0:
      print("Running monte carlo with", nbProcesses, "threads, for", nbTotal, "total iterations and", nbLocal, "iterations per thread")

    start_time = time.time()
    for _ in range(nbLocal):
        x = random.random()
        y = random.random()
        if x*x + y*y <= 1:
            inside +=1

    insideTotal = comm.reduce(inside, op=MPI.SUM, root=0)

    if rank == 0:
      end_time = time.time()
      print("Pi =", 4 * insideTotal/nbTotal, "in ", end_time-start_time, 'seconds')
