from __future__ import print_function
from htrees import *
from htree_dot_noviz import display_htree 

a1 = Node(0.5, Leaf(0.2, 'a'), Leaf(0.3, 'b'))
a2 = Node(0.5, Leaf(0.2, 'a'), Node(0.3, Leaf(0.2, 'c'), Leaf(0.3, 'b')))
a3 = Node(0.7, Node(0.4, Leaf(0.2, 'a'), Leaf(0.3, 'b')), Leaf(0.3, 'c'))

#Fonctions en version "hard code"

def somme (ht):
    if isinstance(ht, Leaf):
        return(ht.val)
    else:
        return(ht.val + somme(ht.low) + somme(ht.high))
    
def profondeur(ht):
    if isinstance(ht, Leaf):
        return 0;
    else:
        return 1 + max(profondeur(ht.low), profondeur(ht.high))

def member(ht, code):
    if isinstance(ht, Leaf):
        return (ht.code == code)
    else:
        return (member(ht.low, code) or member(ht.high, code))
    
def aff_arbre(ht, indent):
    if isinstance(ht, Leaf):
        print((" " * indent * 4), ht.val, ":", ht.code)
    else:
        print((" " * indent * 4), ht.val)
        aff_arbre(ht.low, indent + 1)
        aff_arbre(ht.high, indent + 1)
        
#Functions utilisant iterate_tree
def iterate_tree(ht, callback_leaf, callback_node)
    if isinstance(ht, Leaf):
        return callback_leaf(ht)
    else:
        return callback_node(ht)
