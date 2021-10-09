from PIL import Image
import numpy as np
import os
#### hace de img a txt
im = Image.open('img.jpg')

x = im.width
y = im.height


pix = im.load()

pixeles = []
pixelestxt = []
pixarray = np.arange(0, x*y, 1, np.uint8)

for j in range(y):
    for i in range(x):
        pixeles.append(pix[i,j])
      
file = open("imgEnTXT.txt", "w")
        
for i in range(x*y):
    file.write(str(pixeles[i]))
    file.write('\n')
    
file.close()


#### Vuelve de txt a image
lines = []
with open('imgEnTXT.txt') as f:
    lines = f.readlines()

counter = 0

for line in lines:
    pixarray[counter] = int(line.strip())
    counter += 1
    
    
pixarray = np.reshape(pixarray, (y, x))

new_image = Image.fromarray(pixarray)
new_image.save('new.jpg')
