#!/usr/bin/env python3

import numpy as np
import matplotlib.pyplot as plt
import sys

taille = 2000

if len(sys.argv) < 2:
    print("Usage : ", sys.argv[0], " filename")
    exit(1)

filename = sys.argv[1]

pixels = np.genfromtxt(filename, delimiter='\t', dtype = int)

original_shape = (taille, taille, 3)
pixels = pixels.reshape(original_shape)

plt.imshow(pixels)
plt.show(block=True)  