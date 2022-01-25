import numpy as np
import scipy.stats as sp
import matplotlib.pyplot as plt

x = np.arange(-1, 5, 0.05)
plt.plot(x, sp.norm.pdf(x, 2, 1), 'r-')

x = np.arange(0, 10, 0.05)
plt.plot(x, sp.norm.pdf(x, 5, 3), 'g-')

x = np.arange(0, 10, 0.05)
plt.plot(x, sp.expon.pdf(x, 1), 'b-')

plt.show()