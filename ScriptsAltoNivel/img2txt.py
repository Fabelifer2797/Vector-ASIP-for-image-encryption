from PIL import Image
import numpy as np
import os

INT_BITS = 8
## sacado de https://www.geeksforgeeks.org/rotate-bits-of-an-integer/
def rightRotate(n, d):
    # In n>>d, first d bits are 0.
    # To put last 3 bits of at
    # first, do bitwise or of n>>d
    # with n <<(INT_BITS - d)
    return (n >> d) | (n << (INT_BITS - d)) & 0xFFFFFFFF


#### hace de img a txt
im = Image.open('img.jpg')

x = im.width
y = im.height


pix = im.load()

pixeles = []
pixelestxt = []
pixarray = np.arange(0, x*y, 1, np.uint8)

#### algoritmo original################

for j in range(y):
    for i in range(x):
        pixeles.append(pix[i,j])
      
file = open("imgEnTXT.txt", "w")
        
for i in range(x*y):
    file.write(str(pixeles[i]))
    file.write('\n')
    
file.close()

##### archivo con el algoritmo xor

pixelesXOR = []

for i in range(x * y):
    pixelesXOR.append(pixeles[i] ^ 32)

file = open("imgEnTXTXOR.txt", "w")

for i in range(x * y):
    file.write(str(pixelesXOR[i]))
    file.write('\n')

file.close()

##### archivo con el algoritmo shift

pixelesShift = []

for i in range(x * y):
    pixelesShift.append(rightRotate(pixeles[i], 4))

file = open("imgEnTXTshift.txt", "w")

for i in range(x * y):
    file.write(str(pixelesShift[i]))
    file.write('\n')

file.close()

#### Vuelve de txt a image#############

# lines = []
# with open('imgEnTXT.txt') as f:
#     lines = f.readlines()
#
# counter = 0
#
# for line in lines:
#     pixarray[counter] = int(line.strip())
#     counter += 1
#
#
# pixarray = np.reshape(pixarray, (y, x))
#
# new_image = Image.fromarray(pixarray)
# new_image.save('new.jpg')

#############################################

# lines = []
# with open('imgEnTXTXOR.txt') as f:
#     lines = f.readlines()
#
# counter = 0
#
# for line in lines:
#     pixarray[counter] = int(line.strip())
#     counter += 1
#
#
# pixarray = np.reshape(pixarray, (y, x))
#
# new_image = Image.fromarray(pixarray)
# new_image.save('xor.jpg')

################################################

lines = []
with open('imgEnTXTshift.txt') as f:
    lines = f.readlines()

counter = 0

for line in lines:
    pixarray[counter] = int(line.strip())
    counter += 1


pixarray = np.reshape(pixarray, (y, x))

new_image = Image.fromarray(pixarray)
new_image.save('shift.jpg')



#   https://www.geeksforgeeks.org/python-bitwise-operators/