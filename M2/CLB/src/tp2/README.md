Mon code est situé dans capteur_main.c   

Il implémente a priori toute la partie 1 (un seul capteur). 

Problème connu : il ne lit le bus_pin qu'à son initialisation, donc pour changer de pin il faut enlever puis remettre le module.  

Je fournis également une version alternative, capteur_main.c, qui corrige a priori ce problème ; cependant, elle est un peu expérientale, je n'ai pas trop pu tester le changement de pin à la volée.  