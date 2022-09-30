#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Nov 29 16:02:49 2021

@author: tnt3192a
"""

import numpy.random as loi
import numpy as np

X = loi.normal(0, 1, 1000) 
Y = loi.uniform(10, 20, 1000)
Z = loi.uniform(0, 1, 1000)

print("Matrice de covariance X Y : \n", np.cov(X, Y), '\n')

print("Matrice de covariance Y Z : \n", np.cov(Y, Z), '\n')

print("Matrice de covariance Z X : \n", np.cov(Z, X), '\n')

mat = np.array([X, Y, Z])
print("Matrice de covariance de X Y Z : \n", np.cov(mat), '\n')

#Les variances font sens
#Les covariances sont faibles car les variables ont été générées indépendament

print("Coef de corrélation de X et X + X : \n", np.corrcoef(X, X+X))

print("Coef de corrélation de X et X * X : \n", np.corrcoef(X, X*X))

print("Coef de corrélation de 2 * X + Y et 3 * X + Y : \n", np.corrcoef(2 * X + Y,3 * X + Y ))
