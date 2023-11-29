import numpy as np

step = 0.0005
minX = -1
maxX = 1
minY = -1
maxY = 1

max_tries = 20

def calc_point(x, y):
  c = complex(x, y)
  z = complex(0, 0)

  tries = 0
  while tries < max_tries and abs(z) < 2:
    z = (z * z) + c
    tries += 1

  return tries 

count = 0

for x in np.arange(minX, maxX, step):
  for y in np.arange(minY, maxY, step):
    count += 1 if calc_point(x, y) >= max_tries else 0

print(count)