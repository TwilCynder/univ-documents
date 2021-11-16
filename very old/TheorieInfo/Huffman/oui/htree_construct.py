# Auxiliary functions for constructing a Huffman tree from a string


from htrees import *

def increment(d, k):
    if not k in d:
        d[k] = 1
    else:
        d[k] += 1

#----------------------------------------------------------------------
# Compute character distibution from input string
#----------------------------------------------------------------------

def ch_distrib(chaine):
    dico = dict()
    for e in chaine:
        increment(dico, e)
    nb = len(chaine)    
    for k in dico:
        dico[k] /= nb
    return dico
        

#----------------------------------------------------------------------
# Construct Huffman tree from character distribution
#----------------------------------------------------------------------

def init_treeset(chaine):
    dico = ch_distrib(chaine)
    li = []
    for k in dico:
        li.append(Leaf(dico[k], k))
    return li    

def combine_two(low, high):
    return Node(low.val + high.val, low, high)

def combine_huffman

#----------------------------------------------------------------------
# Construct coding table corresponding to Huffman tree
#----------------------------------------------------------------------

def dict_merge_f (d1, d2):
    dres = d1.copy()
    dres.update(d2)
    return dres


#----------------------------------------------------------------------
# Coding of a string with a coding table, resp. decoding with a Huffman tree
#----------------------------------------------------------------------
