#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 29 17:34:10 2021

@author: tnt3192a
"""

import numpy.random as loi
import numpy as np
import matplotlib.pyplot as plt

X = loi.uniform(0, 9, 20) 
Y = loi.uniform(0, 9, 20)

plt.figure()
plt.plot(X, Y, 'xk')

mx = np.mean(X)
print("Moyenne de X : ", mx)
my = np.mean(Y)
print("Moyenne de Y : ", my)
varx = np.var(X)
print("Variance de X : ", varx)
covxy = np.cov(X, Y)[0, 1]
print("Covariance de X Y : ", covxy)

def lr(x):
    return (covxy / varx) * (x - mx) + my

plt.plot([0, 9], [lr(0), lr(9)], '-r')
plt.show()