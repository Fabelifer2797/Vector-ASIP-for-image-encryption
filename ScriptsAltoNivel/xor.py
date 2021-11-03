from PIL import Image, ImageOps  
import matplotlib.pyplot as plt
import numpy as np
from numpy import asarray

fig, axs = plt.subplots(1,3, figsize=(10, 6.5))
axs[0].set_title("Imagen original")
A = Image.open("Imagenes/lena.jpg")#.convert('L')
A = np.uint8(asarray(A))
xor = 128 # LLAVE DEL XOR
B = A ^ xor
C = B ^ xor
axs[0].imshow(A, cmap='gray')
axs[1].set_title("Imagen codificada")
axs[1].imshow(B, cmap='gray')
axs[1].set_title("Imagen decodificada")
axs[2].imshow(C, cmap='gray')
plt.show()