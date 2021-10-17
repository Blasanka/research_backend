# -*- coding: utf-8 -*-
"""
Created on Sun Oct 10 16:22:13 2021

@author: AsankaBL
"""

import os
import random

# Add contrast to images to make more bright

from PIL import Image, ImageFilter, ImageEnhance

# Adding contrast to 10 random images of the image set
my_randoms = random.sample(range(40), 10)

# Im using absolute paths everywhere because that is allowing me to move this script anywhere without copying data everywhere
dir_path = 'C:/Users/BLiyanage/Downloads/notebooks/flower_disease_CNN/dataset/training_samples'
for i in range(6):
    for index, file in enumerate(os.listdir(f'{dir_path}/{i}')):
        if index in my_randoms and 'contrast_' not in file:
            img = Image.open(f'{dir_path}/{i}/{file}')
            enc_img = img.filter(ImageFilter.DETAIL)
            
            img_con = ImageEnhance.Contrast(img)
            img_con.enhance(1.9).save(f'{dir_path}/{i}/contrast_{file}')



# Add gamma to make images to add some hard contrast

import cv2
import numpy as np

# Adding gamma to 10 random images of the image set
my_randoms = random.sample(range(40, 70), 10)

def adjust_gamma(image, gamma=1.0):
   invGamma = 1.0 / gamma
   table = np.array([((i / 255.0) ** invGamma) * 255
      for i in np.arange(0, 256)]).astype("uint8")

   return cv2.LUT(image, table)


for i in range(6):
    for index, file in enumerate(os.listdir(f'{dir_path}/{i}')):
        if index in my_randoms and 'contrast_' not in file and 'gamma_' not in file:
            x = f'{dir_path}/{i}/{file}'
            original = cv2.imread(x, 1)
            #cv2.imshow('original',original)
            
            gamma = 0.49
            adjusted = adjust_gamma(original, gamma=gamma)
            cv2.imwrite(f'{dir_path}/{i}/gamma_{file}', adjusted)
            #cv2.imshow("gammam image 1", adjusted)
            #cv2.waitKey(0)
            #cv2.destroyAllWindows()




# Add low brightness on top of image to make darkness


from PIL import Image

# Adding brightness to 10 random images of the image set
my_randoms = random.sample(range(70, 100), 10)

for i in range(6):
    for index, file in enumerate(os.listdir(f'{dir_path}/{i}')):
        if index in my_randoms and 'contrast_' not in file and 'gamma_' not in file and 'low_brightness_' not in file:
            x = f'{dir_path}/{i}/{file}'
            im1 = Image.open(x)
            im2 = im1.point(lambda p: p * 0.6)
            im2.save(f'{dir_path}/{i}/low_brightness_{file}')


