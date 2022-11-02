# python3 syracuse.py 4

import sys
import time

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


for val in range(1, upper_bound+1):
    tmp = nb_primes(val)
    current_max = max(current_max, tmp)

print(current_max)

end_time = time.time()
print("Maximum number of primes =", current_max, "in ", end_time-start_time, 'seconds')
