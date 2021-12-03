<<<<<<< HEAD
import numpy.random as loi
import numpy as np
import scipy.stats as loiT

def print_stats(arr):
  esperance = np.mean(arr)
  variance = np.var(arr)
  print("Esperance : " + str(esperance) + " | Variance : " + str(variance))

print("=== Loi UNIFORME ===")
print("VALEURS STATISTIQUES")

param1 = 10
param2 = 20

xp = loi.uniform(param1, param2, size=1000) 
print_stats(xp)
xp = loi.uniform(param1, param2, size=10000) 
print_stats(xp)
xp = loi.uniform(param1, param2, size=100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str((param1 + param2) / 2) + " | Variance : " + str(((param2 - param1)**2 -1) / 12 ))

print("=== Loi NORMALE ===")
print("VALEURS STATISTIQUES")

param1 = 0
param2 = 1

xp = loi.normal(param1, param2, size=1000) 
print_stats(xp)
xp = loi.normal(param1, param2, size=10000) 
print_stats(xp)
xp = loi.normal(param1, param2, size=100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str(param1) + " | Variance : " + str(param2**2))

print("=== Loi EXPONENTIELLE ===")
print("VALEURS STATISTIQUES")

param1 = 0.5

xp = loi.exponential(1 / param1, size=1000) 
print_stats(xp)
xp = loi.exponential(1 / param1, size=10000) 
print_stats(xp)
xp = loi.exponential(1 / param1, size=100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str(1 / param1) + " | Variance : " + str(1 / (param1**2)))
=======
import numpy.random as loi
import numpy as np
import scipy.stats as loiT

def print_stats(arr):
  esperance = np.mean(arr)
  variance = np.var(arr)
  print("Esperance : " + str(esperance) + " | Variance : " + str(variance))

print("=== Loi UNIFORME ===")
print("VALEURS STATISTIQUES")

param1 = 10
param2 = 20

xp = loi.uniform(param1, param2, 1000) 
print_stats(xp)
xp = loi.uniform(param1, param2, 10000) 
print_stats(xp)
xp = loi.uniform(param1, param2, 100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str((param1 + param2) / 2) + " | Variance : " + str(((param2 - param1)**2 -1) / 12 ))

print("=== Loi NORMALE ===")
print("VALEURS STATISTIQUES")

param1 = 0
param2 = 1

xp = loi.normal(param1, param2, 1000) 
print_stats(xp)
xp = loi.normal(param1, param2, 10000) 
print_stats(xp)
xp = loi.normal(param1, param2, 100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str(param1) + " | Variance : " + str(param2**2))

print("=== Loi EXPONENTIELLE ===")
print("VALEURS STATISTIQUES")

param1 = 0.5

xp = loi.exponential(1 / param1, 1000) 
print_stats(xp)
xp = loi.exponential(1 / param1, 10000) 
print_stats(xp)
xp = loi.exponential(1 / param1, 100000) 
print_stats(xp)

print("VALEURS THEORIQUES : ")
print("Esperance : " + str(1 / param1) + " | Variance : " + str(1 / (param1**2)))

#On remarque que plus la taille de l'échantillon est élevée, plus les valeurs pratiques sont proches des valeurs théoriques
>>>>>>> fff9f55bf1c9f07785c683531d397ce895c2f94c
