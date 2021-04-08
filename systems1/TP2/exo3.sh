#!/bin/sh
grep "^.\{$1,$2\} " liste.txt | grep -v "^.\{$2\} " 
#(on aurait pu décrémenter la valeur du deuxième argument mais la commande expr ne figurant pas dans la liste des commandes à utiliser pour cette séance j'ai préféré chercher une autre solution)
