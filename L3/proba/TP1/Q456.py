import numpy as np

B = np.random.rand(5, 3)
C = np.random.rand(5, 3)

print("-- Matrice B : ")
print(B)
print("-- Matrice C : ")
print(C)

F = B * C
G = B.dot(np.transpose(C))

print("-- Matrice F (Produit élément à élément de B et C) : ")
print(F)
print("-- Matrice C (Produit matriciel de B et la transposée de C): ")
print(G)

print("-- Elements de F ∈ [0.2, 0.6]")
print(F[(F < 0.6 )& (F > 0.2)])

print("-- Elements de G >= 0.6")
print(G[G >= 0.6])