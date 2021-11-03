from PIL import Image, ImageOps  
import matplotlib.pyplot as plt
import numpy as np
from numpy import asarray

fig, axs = plt.subplots(1,3, figsize=(10, 6.5))
axs[0].set_title("Imagen original")
A = Image.open("Imagenes/lena.jpg")#.convert('L')
A = np.uint8(asarray(A))

rot = 5 # CANTIDAD DE BITS

B = (A << rot) | (A >> (8 - rot)) # Rota a la izquierda y luego mueve los bits corridos al inicio con un shift a la derecha y suma

C = (B >> rot) | (B << (8 - rot))

axs[0].imshow(A, cmap='gray')
axs[1].set_title("Imagen codificada")
axs[1].imshow(B, cmap='gray')
axs[1].set_title("Imagen decodificada")
axs[2].imshow(C, cmap='gray')
plt.show()