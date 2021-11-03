from PIL import Image, ImageOps  
import matplotlib.pyplot as plt
import numpy as np
from numpy import asarray
import time

fig, axs = plt.subplots(1,3, figsize=(10, 6.5))
axs[0].set_title("Imagen original")
A = Image.open("Imagenes/lena.jpg")#.convert('L')
A = np.uint8(asarray(A))
# Image.show(A)
print(A.shape)
A = A.flatten()
size = A.size
# B = np.zeros(size)
cont = 0 # Contador
despl_pix = 8 # Desplazamiento en memoria

rot1 = 2 # CANTIDAD DE BITS Round 1
xor_1 = 34 # LLAVE DEL XOR Round 1
rot2 = 3 # CANTIDAD DE BITS Round 2
xor_2 = 123 # LLAVE DEL XOR Round 2

B = (A << rot1) | (A >> (8 - rot1))
print("B ", B[:5])
B = B ^ xor_1
B = (B << rot2)| (B >> (8 - rot2))
B = B ^ xor_2

C = B ^ xor_2
C = (C >> rot2)| (C << (8 - rot2))
C = C ^ xor_1
print("C ", C[:5])
C = (C >> rot1)| (C << (8 - rot1))

A = A.reshape(256,256)
B = B.reshape(256,256)
C = C.reshape(256,256)

axs[0].imshow(A, cmap='gray')
axs[1].set_title("Imagen codificada")
axs[1].imshow(B, cmap='gray')
axs[1].set_title("Imagen decodificada")
axs[2].imshow(C, cmap='gray')
# fig.show()
plt.style.use('grayscale')
plt.show()