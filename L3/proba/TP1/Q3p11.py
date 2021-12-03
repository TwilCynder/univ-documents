import numpy as np
import scipy.stats as sp
import matplotlib.pyplot as plt

nombres_gaussiens = np.random.randn(10000)

plt.figure()
plt.hist(nombres_gaussiens, 100)
plt.show()