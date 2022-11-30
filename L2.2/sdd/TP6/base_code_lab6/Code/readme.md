## Compte rendu
Désolé pour le retard pris par le rendu de ce TP, pour être tout à fait honnête avec les partiels je l'avais oublié.  
Le dernier exercice n'a pas été fait par manque de temps.  
Le reste a l'air de fonctionner, en tout cas les arbres générés sont des arbres binaires de recherche valide, et les propriétés des arbes rouge-noir sont bien vérifiées (rouge->fils noirs, hauteur noire égale), cependant il y a presque toujours des différences de hauteurs de 2 entre certaines branches, ce qui ne me semble pas normal (et rend certains arbres moins optimisés en rouge-noir qu'en BST normal).

### Notes sur le code
Dans la fonction bstree_add, j'ai ajouté un test afin de faire en sorte que le double pointeur passé en paramètre pointe toujours sur la racine de l'arbre, cependant cette manière de faire me paraît étrange, bien que je n'aie trouvé aucune autre solution.

## Réponses aux questions posées dans le sujet

### Exercice  1
Tout ce qu'on ajoute dans cette fonction doit être fait dans bstree.c, car ça relève de la représentation interne de notre RBT.  
Il aurait pu être pertinent de laisser l'utilisateur du .h accéder à `print_node`, mais on lui fournit `rbtree_export_dot` qui en fait usage.

### Exercice 2
Ces fonctions devraient être déclarées dans bstree.c et non dans le header, car elles n'ont pas d'utilité pour l'utilisateur en tant que telles, elle se serviront qu'en tant que partie du processus d'un des opérateurs fournis.