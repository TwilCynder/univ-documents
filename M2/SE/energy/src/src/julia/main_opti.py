import matplotlib.pyplot as plt
import numpy as np

taille = 400
xmin, xmax = -1, 1
ymin, ymax = -1, 1
iterationmax = 100

stepX = (xmax - xmin) / taille
stepY = (ymax - ymin) / taille

a = -0.8
b = 0.156

pixels = np.zeros((taille, taille, 3), dtype='i')

for line in range(taille):
    for col in range(taille):
        i = 1
        x = xmin+col*stepX
        y = ymax-line*stepY
        while i<=iterationmax and (x**2+y**2)<=4:

            x, y = x**2-y**2+a, 2*x*y+b
            i += 1
            if i>iterationmax and (x**2+y**2)<=4:
                pixels[col,line] = (0,0,0)
            else:
                pixels[col,line] = ((4*i)%256,2*i,(6*i)%256)

pixels = pixels.transpose(2, 0, 1).reshape((taille * taille, 3))

np.savetxt("python_out.csv", pixels, fmt= "%d", delimiter='\t')