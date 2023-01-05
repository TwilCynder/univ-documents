param fichier := "bin-packing-difficile-hard.bpa";
param capacite := read fichier as "1n" comment "#" skip 1 use 1;
do print "capacite : ", capacite;
param nbObj := read fichier as "2n" comment "#" skip 1 use 1;
set Objets := { 0 to nbObj-1 by 1 };
set Boites := { 0 to nbObj-1 by 1 };

set tmp [ <i > in Objets ] := { read fichier as " <1n >" skip 2+i use 1} ;
param taille [ <i > in Objets ] := ord ( tmp [ i ] ,1 ,1);

var x[Objets*Boites] binary;
var y[Boites];

subto completude : forall <i> in Objets: (sum <j> in Boites: x[i, j]) == 1;
subto utilisation1 : forall <j> in Boites: forall <i> in Objets: x[i, j] <= y[j];
subto capacite : forall <j> in Boites: (sum <i> in Objets: x[i, j] * taille[i]) <= capacite;
minimize nombreBoites: sum<j> in Boites: y[j];