# -*- coding: utf-8 -*-

try:
    from IPython import get_ipython
    get_ipython().magic('clear')
    get_ipython().magic('reset -f')
except:
    pass


import pickle
import matplotlib.pyplot as plt



# Lecture des 10 fichiers au format Pickle
f = open('exam_tp2021_8h45.pkl', 'rb')
loi1 = pickle.load(f)
loi2 = pickle.load(f)
loi3 = pickle.load(f)
loi4 = pickle.load(f)
loi5 = pickle.load(f)
loi6 = pickle.load(f)
loi7 = pickle.load(f)
loi8 = pickle.load(f)
loi9 = pickle.load(f)
loi10 = pickle.load(f)
f.close()

LOI = loi10

plt.figure()
plt.hist(LOI, 100, density=True, label='resultat pratique')
#plt.plot(vec, xt, 'r', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
plt.title('Loi')
plt.xlabel('Intervalles')
plt.ylabel('Probabilites')
plt.legend()
plt.show()

print(LOI.mean())
print(LOI.var())