import matplotlib.pyplot as plt
import numpy as np

taille = 200
xmin, xmax = -1, 1
ymin, ymax = -1, 1
iterationmax = 100

stepX = (xmax - xmin) / taille
stepY = (ymax - ymin) / taille

a = -0.8
b = 0.156

c = complex(a, b)

pixels = np.zeros((taille, taille, 3), dtype='i')

y = ymax
for line in range(taille):
    x = xmin
    for col in range(taille):
        i = 1
        z = complex(x, y)
        #print(x, y, "---------------------")
        while i<=iterationmax and ((z.real ** 2) + (z.imag ** 2))<=4:
            z = (z * z) + c
            #print(z)
            i += 1

        if i>iterationmax:
            pixels[col,line] = (0,0,0)
        else:
            pixels[col,line] = ((4*i)%256,2*i,(6*i)%256)
        #print(pixels[col, line])
        x += stepX
    y -= stepY

#print(pixels)
pixels = pixels.reshape((taille * taille, 3))

np.savetxt("python_out.csv", pixels, fmt= "%d", delimiter='\t')