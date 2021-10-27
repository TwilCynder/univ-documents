# Compression and decompression with LZW algorithm
# Can be used in two modes:
# small alphabet size: alpha_small = True and alpha_size between 3 and 10 
#     with initialization dictionaries of the form {'a': 0, 'b': 1 ...}
#     typical use: decompress(compress("abacababac"))
# large alphabet size: alpha_small = False and alpha_size = 128
#     with initialization of large dictionaries, typically ASCII or UTF-8 character sets
#     typical use: write_file ("alice_dec.txt", decompress(compress(read_file("alice.txt")))) 

# Size of the alphabet
alpha_small = False
alpha_size = 4

# Maximal size of the dictionary
dict_size = 256


#----------------------------------------------------------------------
# Auxiliary functions
#----------------------------------------------------------------------

# read from file with filename
def read_file (filename):
    with open(filename) as fn:
        return (fn.read())


# write str to file with filename
def write_file (filename, str):
    with open(filename, "w+") as fn:
        fn.write(str)

#----------------------------------------------------------------------
# Compression
#----------------------------------------------------------------------

def init_dict(size = alpha_size):
	dict = {}
	for i in range(97, 97 + size):
		dict[chr(i)] = i
	return dict

def compress(str):
    compr = []
    for c in str:
		compr.append(dict[c])
    return compr

def compress_lim(str):
    compr = []
    # complete here
    return compr

#----------------------------------------------------------------------
# Decompression
#----------------------------------------------------------------------

def init_inv_dict():
    dict = {}
    # complete here
    return dict

def decompress(compr):
    # Build the dictionary.
    dinv = init_inv_dict()
    pos = alpha_size
    # print(dinv)
    m_act = dinv[compr[0]]
    str = m_act
    for k in compr[1:]:
        #print(k)
        #print(dinv)
        #print("str: " + str)
        m_ant = m_act
        if k in dinv:
            m_act = dinv[k]
            dinv[pos] = m_ant + m_act[0]
            pos = pos + 1
        elif k == pos:
            m_act = m_ant + m_ant[0]
            dinv[pos] = m_act
            pos = pos + 1
        else:
            raise ValueError('Bad compr k: %s' % k)
        str = str + m_act
    return str


def compressed_code_to_string(compr):
    str = ""
    # complete here
    return(str)

def string_to_compressed_code(str):
    compr = []
    # complete here
    return(compr)
