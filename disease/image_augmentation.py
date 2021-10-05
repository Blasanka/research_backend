from keras.preprocessing.image import ImageDataGenerator
from skimage import io
import os as os
import numpy as np
from PIL import Image


datagen = ImageDataGenerator(
    rotation_range=45,
    width_shift_range=0.2,
    shear_range=0.2,
    zoom_range=0.2,
    horizontal_flip=True,
    fill_mode='reflect')

img_size = 64
dataset = []

dir_path = r'C:/Users/BLiyanage/Downloads/notebooks/flower_disease_CNN/dataset/training_samples'
file_list = os.listdir(dir_path)

# for i, image_name in enumerate(file_list):
#     if (image_name.split('.')[1] == 'jpg'):
#         img = io.imread(os.path.join(dir_path, image_name))
# #        img = img.reshape((1, ) + img.shape)
#         img = Image.fromarray(img, 'RGB')
#         img = img.resize((img_size, img_size))
#         dataset.append(np.array(img))
    
# x = np.array(dataset)

i = 0;

for i, one_class in enumerate(file_list):
    print(one_class)
    for batch in datagen.flow_from_directory(directory=dir_path, 
                           batch_size=16,
                           target_size=(64, 64),
                           color_mode='rgb',
                           classes=[one_class],
                           save_to_dir=f'augmented/{one_class}/',
                           save_prefix='aug',
                           save_format='png'):
        i += 1
        if i > 20:
            break