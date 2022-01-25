import numpy as np
import numpy.random as loi
import scipy.stats as loiT
import matplotlib.pyplot as plt


# TP PROBAS et STATISTIQUES en PYTHON 2
# EXERCICE 1 : comparaison de lois uniformes : theorique & pratique


# Loi xxx # A COMPLETER...

def loi_unif(nb_val, min, max, barres, pas):

    # Loi pratique (valeurs aleatoires)
    xp = loi.uniform(min, max, size=nb_val) 

    # Loi theorique
    vec = np.arange(min, max, pas)
    xt = loiT.uniform.pdf(vec, min, max - min)

    # Affichage
    plt.figure()
    plt.hist(xp, barres, density=True, label='resultat pratique')
    plt.plot(vec, xt, 'r', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
    plt.title('Loi Uniforme')
    plt.xlabel('Intervalles')
    plt.ylabel('Probabilites')
    plt.legend()
    plt.show()


def loi_expo(nb_val, λ, barres, pas): 

    # Loi pratique (valeurs aleatoires)
    xp = loi.exponential(1/λ, size=nb_val)

    # Normalisation
    mini = min(xp)
    maxi = max(xp)

    # Loi theorique
    vec = np.arange(mini, maxi, pas)
    xt = loiT.expon.pdf(vec, 0, 1/λ)

    # Affichage
    plt.figure()
    plt.hist(xp, barres, density=True, label='resultat pratique')
    plt.plot(vec, xt, 'r', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
    plt.title('Loi Exponentielle') 
    plt.xlabel('Intervalles')
    plt.ylabel('Probabilites')
    plt.legend()
    plt.show()

def loi_geom(nb_val, p, barres, pas): # A COMPLETER...

    # Loi pratique (valeurs aleatoires)
    xp = loi.geometric(p, size=nb_val) # A COMPLETER...

    # Normalisation
    mini = min(xp)
    maxi = max(xp)

    # Loi theorique
    vec = np.arange(mini, maxi, pas)
    xt = loiT.geom.pmf(vec, p, loc = 0)

    # Affichage
    plt.figure()
    plt.hist(xp, barres, density=True, label='resultat pratique')
    plt.plot(vec, xt, 'or', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
    plt.title('Loi Géométrique')
    plt.xlabel('Intervalles')
    plt.ylabel('Probabilites')
    plt.legend()
    plt.show()

def loi_pois(nb_val, λ, barres, pas): # A COMPLETER...

    # Loi pratique (valeurs aleatoires)
    xp = loi.poisson(λ, size=nb_val) # A COMPLETER...

    # Normalisation
    mini = min(xp)
    maxi = max(xp)

    # Loi theorique
    vec = np.arange(mini, maxi, pas)
    xt = loiT.poisson.pmf(vec, λ, loc = 0)

    # Affichage
    plt.figure()
    plt.hist(xp, barres, density=True, label='resultat pratique')
    plt.plot(vec, xt, 'or', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
    plt.title('Loi de Poisson')
    plt.xlabel('Intervalles')
    plt.ylabel('Probabilites')
    plt.legend()
    plt.show()

def loi_norm(nb_val, μ, σ, barres, pas): # A COMPLETER...

    # Loi pratique (valeurs aleatoires)
    xp = loi.normal(μ, σ, size=nb_val) # A COMPLETER...

    # Normalisation
    mini = min(xp)
    maxi = max(xp)

    # Loi theorique
    vec = np.arange(mini, maxi, pas)
    xt = loiT.norm.pdf(vec, μ, σ)

    # Affichage
    plt.figure()
    plt.hist(xp, barres, density=True, label='resultat pratique')
    plt.plot(vec, xt, 'r', label='resultat theorique') # A MODIFIER dans le cas discret par 'or'
    plt.title('Loi Normale')
    plt.xlabel('Intervalles')
    plt.ylabel('Probabilites')
    plt.legend()
    plt.show()

# DEBUT DU PROGRAMME PRINCIPAL

# Constante
nb_barres = 50
pas_reel = 0.02
pas_discret = 1

# (a) Tests de la loi Uniforme : loi discrete ou reelle au choix...
# 50 valeurs suivant une loi uniforme (min=0 & max=20)
#loi_unif(50, 0, 20, nb_barres, pas_reel)
# 10000 valeurs suivant une loi uniforme (min=0 & max=20)
#loi_unif(10000, 0, 20, nb_barres, pas_reel)
# 10000 valeurs suivant une loi uniforme (min=-5 & max=5)
#loi_unif(10000, -5, 5, nb_barres, pas_reel)

# (b) Tests de la loi Exponentielle : loi reelle
# 50 valeurs suivant une loi expon (min=0 & max=20)
#loi_expo(50, 0.02, nb_barres, pas_reel)
# 10000 valeurs suivant une loi expon 
#loi_expo(10000, 0.02, nb_barres, pas_reel)
# 10000 valeurs suivant une loi expon 
#loi_expo(10000, 0.08, nb_barres, pas_reel)

# (a) Tests de la loi Uniforme : loi discrete ou reelle au choix...
# 50 valeurs suivant une loi géométrique
#loi_geom(50, 0.07, nb_barres, pas_discret)
# 10000 valeurs suivant une loi géométrique
#loi_geom(10000, 0.07, nb_barres, pas_discret)
# 10000 valeurs suivant une loi géométrique
#loi_geom(10000, 0.2, nb_barres, pas_discret)

# (a) Tests de la loi Uniforme : loi discrete ou reelle au choix...
# 50 valeurs suivant une loi géométrique
#loi_pois(50, 5, nb_barres, pas_discret)
# 10000 valeurs suivant une loi géométrique
#loi_pois(10000, 5, nb_barres, pas_discret)
# 10000 valeurs suivant une loi de poisson
#loi_pois(10000, 0.5, nb_barres, pas_discret)
# 10000 valeurs suivant une loi géométrique
#loi_pois(10000, 50, nb_barres, pas_discret)

# (b) Tests de la loi Exponentielle : loi reelle
# 50 valeurs suivant une loi expon (min=0 & max=20)
loi_norm(50, 0, 1, nb_barres, pas_reel)
# 10000 valeurs suivant une loi expon 
loi_norm(10000, 0, 1,  nb_barres, pas_reel)
# 10000 valeurs suivant une loi expon 
loi_norm(10000, 5, 0.5, nb_barres, pas_reel)
# 10000 valeurs suivant une loi expon 
loi_norm(10000, 5, 500, nb_barres, pas_reel)

