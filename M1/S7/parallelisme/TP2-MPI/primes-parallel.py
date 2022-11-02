# python3 syracuse.py 4

import sys
import time
from mpi4py import MPI

def nb_primes(n):
    result = 0
    for i in range(1, n+1):
        if n%i == 0:
            result += 1
    return result

if len(sys.argv) < 2:
    print("Usage : prime.py N")
    exit()

upper_bound = int(sys.argv[1])

current_max = 0

start_time = time.time()

comm = MPI.COMM_WORLD
rank = comm.Get_rank()
nbProcesses = comm.Get_size()

for val in range((rank + 1) * 2, upper_bound+1, nbProcesses * 2):
    tmp = nb_primes(val)
    current_max = max(current_max, tmp)

current_max = comm.reduce(current_max, op=MPI.MAX, root=0)

if rank == 0:
  end_time = time.time()
  print("Maximum number of primes =", current_max, "in ", end_time-start_time, 'seconds')
