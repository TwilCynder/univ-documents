# Rapport de TP

## Question 3.3.3
Une importante différence de performances peut être constatée : le maximum d'opérations passe à 13 (le nombre d'éléments, c'est à dire le pire nombre d'opérations possible), et la moyenne double, passant de 4 à 9.  
Cela est du au fait qu'un itérateur est obligé d'avancer d'élément en élément, passant par tous les liens de niveau 0 sans pouvoir utiliser les liens de plus haut niveau, perdant ainsi tout l'avantage de la skiplist. Ainsi, on se retrouve avec les mêmes performances qu'avec une liste chainée normale si on essaie d'effectuer une recherche avec les itérateurs, vu que l'itérateur devra passer par tous les éléments précédant l'élément recherché, là où un parcours utilisant les fonctionnalités de la SkipList pourra éviter une bonne partie des éléments en utilisant les liens supérieurs. 

Les liens de plus haut niveau sont inutilisables car ils ne sont pertinents que si on sait quelle valeur on recherche au moment où on avance, information qui n'est évidemment pas accessible à l'itérateur.  

La différence particulièrement importante pour le test 4, qui utilise une liste de taille considérable, s'explique par le fait que la parcours skiplist standard n'est pas juste plus rapide que le parcours naif auquel ne limitent les itérateurs, il est d'une complexité différente : là où le parcours itératif a une complexité O(n), le parcours utilisant les liens supérieurs se fait avec une complexité O(logN), ce qui explique une différence de plus en plus énorme à mesure que la liste grandit.