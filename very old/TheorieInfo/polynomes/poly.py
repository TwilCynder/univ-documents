def add_mod2(a, b):
	return (a + b) % 2
	
def deg(poly):
	d = 0
	for i in range(len(poly)):
		if poly[i]:
			d = i
	return d

def coeff(poly):
	return poly[deg(poly)]
	
def is_null_poly(poly):
	return not not coeff(poly)
	
def add_poly(polya, polyb):
	len_a = len(polya)
	len_b = len(polyb)
	i = 0
	res = []
	for i in range(min(len_a, len_b)):
		res.append(add_mod2(polya[i], polyb[i]))
	res.extend(len_a > len_b and polya[i + 1:] or polyb[i + 1:])
	return res
	
def diff_poly(polya, polyb):
	return add_poly(polya, polyb)
	
def mult_poly_monome(poly, monome):
	res = poly[:]
	for i in range(len(poly)):
		poly[i] *= monome
	return res
	
def mult_poly(polya, polyb):
	res = []
	for i in range(len(polyb)):
		if polyb[i]:
			res += ([0] * i) + mult_poly(polya, polyb[i])
	return res

def eucl_poly(polya, polyb):
	q = [0] * deg(polya)
	r = polya
	d = deg(polyb)  
	c = coeff(polyb)
	while (not r == []) and deg(r) >= d:
		s= (coeff(r)/c)
		q[deg(r)-d] = s
		r = r - s*B
		r = diff_poly(r, mult_poly_monome())
	return (q, r)
	
def eucl_poly(polya, polyb):
	q = [0] * deg(polya)
	r = polya[:]
	d = deg(polyb)
	c = coeff(polyb)
	
	while not is_null_poly(r) and deg(r) >= d do:
		s = [0] * (deg(r) - d)
		q = add_poly(q, s)
		r = diff_poly(r, mult_poly(s, polyb))
	return q, r	

def pad(poly, n):
	return poly + [0] * n

def cod(message, poly)