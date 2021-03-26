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

def init_treeset(dico):
    li = []
    for k in dico:
        li.append(Leaf(dico[k], k))
    return li    

def combine_two(low, high):
    return Node(low.val + high.val, low, high)

def combine_all_trees(treeset):
    while len(treeset) > 1:
        treeset = sorted(treeset, key=lambda x: x.val)
        treeset[0] = combine_two(treeset[0], treeset[1])
        del treeset[1]
    return treeset[0]    

def construct_huffman_tree(chaine):
    return combine_all_trees(
        init_treeset(
            ch_distrib(chaine)
        )
    )

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

def tab_cod(m, ht):
    if isinstance(ht, Leaf):
        return [(ht.val, m)]
    return dict_merge_f(tab_cod(m.append(0), ht.low), tab_cod(m.append(1), ht.high))

def htree_to_coding_tab(ht):
    return tab_cod([], ht)

def construct_coding_tab(chaine):
    return htree_to_coding_tab(
        construct_huffman_tree(chaine)
    )

#----
def code_string(chaine, table):
    m = []
    for c in chaine:
        if c in table:
            m.extend(table[c])
    return m


