# -*- coding: utf-8 -*-
"""
Created on Sun Oct 09 12:36:17 2021

@author: AsankaBL
"""

from PIL import Image
import glob
import os

class_dir_path = f'C:/Users/BLiyanage/Downloads/notebooks/flower_disease_CNN/dataset'


# Training data resize

if not "training_samples" in os.listdir(class_dir_path):
    os.mkdir("training_samples")
    

# Here, 6 is because we have only five classess
for i in range(6):
    # Get all unresized images to a list
    # Here, I got png and jpg as separate lists
    jpg_images = [i for i in glob.glob(class_dir_path + f'/unprocessed/training/{i}/*.jpg')]
    png_images = [i for i in glob.glob(class_dir_path + f'/unprocessed/training/{i}/*.png')]
    
    # jpgs and pngs combined to a one list
    all_images = jpg_images + png_images
    
    # If there is no class label directory, create one
    dir_path = f'{class_dir_path}/training_samples'
    if not f"{i}" in os.listdir(dir_path):
        os.mkdir(f"{dir_path}/{i}")
    
    # Resize all training images and save to relevant class labeled directory
    for j in all_images:
        img = Image.open(j)
        img = img.resize((64, 64), Image.ANTIALIAS)
        img.save(f'{dir_path}/{i}/{os.path.basename(j)}')

print("Training images resized successfully!")

# After resizing images, rename existed and resized images by count (0 to n)



# Testing data resize

if not "testing_samples" in os.listdir(class_dir_path):
    os.mkdir("testing_samples")
    

# Here, 6 is because we have only five classess
for i in range(6):
    # Get all unresized images to a list
    # Here, I got png and jpg as separate lists
    all_images = [i for i in glob.glob(class_dir_path + f'/unprocessed/testing/{i}/*.jpg')]
    png_images = [i for i in glob.glob(class_dir_path + f'/unprocessed/testing/{i}/*.png')]
    
    # jpgs and pngs combined to a one list
    all_images = jpg_images + png_images
    
    # If there is no class label directory, create one
    if not f"{i}" in os.listdir(class_dir_path):
        os.mkdir(f"{i}")
    
    # Resize all training images and save to relevant class labeled directory
    for j in all_images:
        img = Image.open(j)
        img = img.resize((64, 64), Image.ANTIALIAS)
        img.save(class_dir_path + f'/testing_samples/{i}/{os.path.basename(j)}')

print("Testing images resized successfully!")

# After resizing images, rename existed and resized images by count (0 to n)
