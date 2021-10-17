# -*- coding: utf-8 -*-
"""
Created on Sun Oct 09 15:54:46 2021

@author: AsankaBL
"""

import os


# Training dataset directory images rename

for i in range(6):
    class_dir_path = f'C:/Users/BLiyanage/Downloads/notebooks/flower_disease_CNN/dataset/training_samples/{i}'
    files = os.listdir(class_dir_path)
    for index, file in enumerate(files):
        os.rename(
            os.path.join(class_dir_path, file),
            os.path.join(class_dir_path, f'img_{index}.jpg'))

print("Successfully renamed training data!")

# Testing dataset directory images rename


for i in range(6):
    class_dir_path = f'C:/Users/BLiyanage/Downloads/notebooks/flower_disease_CNN/dataset/testing_samples/{i}'
    files = os.listdir(class_dir_path)
    for index, file in enumerate(files):
        os.rename(
            os.path.join(class_dir_path, file),
            os.path.join(class_dir_path, f'img_{index}.jpg'))

print("Successfully renamed testing data!")