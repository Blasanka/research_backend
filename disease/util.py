import json
import os
import uuid

# Image processing
import numpy as np
from keras.preprocessing import image
import keras as ker

__available_diseases = None
__data_columns = None
__model = None
__weight = 0.069


def detect_disease(file, upload_folder):
    
    if not os.path.exists(upload_folder):
        os.makedirs(upload_folder)
    
    # Saving upload file for future use
    f_name = str(uuid.uuid4()) + '_' + file.filename
    file.save(os.path.join(upload_folder, f_name))

    cnn_model = ker.models.load_model("disease/artifacts/flower_disease_identifier.h5")
    cnn_model.summary()

    # predict_image = image.load_img('uploads\\'+f_name, target_size=(64, 64, 1))
    # predict_image = image.img_to_array(predict_image)
    # predict_image = np.expand_dims(predict_image, axis=-1)
    # predict_image = predict_image.reshape(-1, 64, 64, 1)
    # predicted_result = cnn_model.predict(predict_image)
    # predicted_class = cnn_model.predict_classes(predict_image)

    predict_image = image.load_img(os.path.join(upload_folder, f_name), target_size=(64, 64))
    predict_image = image.img_to_array(predict_image)
    predict_image = np.expand_dims(predict_image, axis=-0)
    predicted_result = cnn_model.predict(predict_image)
    predicted_class = np.argmax(predicted_result, axis=-1)

    print(predicted_class)
    # print(predicted_result)
    
    output = predicted_result[0]

    if predicted_class[0] == 0:
        disease_name = "Rose healthy"
        disease_description = "Plant and flower is healthy"
        flower_name = "Rose"
        prediction = (output[0] - __weight) * 100
    elif predicted_class[0] == 1:
        disease_name = "Powdery Mildow"
        disease_description = "Powdery Mildow is a fungas disease creating devastating losses. " \
                              "Powdery Mildow thrives in cool, humid weather."
        flower_name = "Rose"
        prediction = (output[1] - __weight) * 100
    elif predicted_class[0] == 2:
        disease_name = "Botrytis"
        disease_description = "The fungus can invade and damage almost any plant part."
        flower_name = "Rose"
        prediction = (output[2] - __weight) * 100
    elif predicted_class[0] == 3:
        disease_name = "Sunflower healty"
        disease_description = "Plant and flower is healthy"
        flower_name = "Sunflower"
        prediction = (output[3] - __weight) * 100
    elif output[4] >= 0.8:
        disease_name = "Wilt"
        disease_description = "Tissue between leaf veins become yellow, then brown, giving diseased leaves a mottled " \
                              "appearance. "
        flower_name = "Sunflower"
        prediction = (output[4] - __weight) * 100
    elif output[5] >= 0.8:
        disease_name = "Root Rot"
        disease_description = "The infected plants show drooping of leaves and death occurs in patches."
        flower_name = "Sunflower"
        prediction = (output[5] - __weight) * 100
    else:
        disease_name = "Could not identify"
        disease_description = "Please try again"
        flower_name = "No name"
        prediction = 0

    # temporary delete uploaded file after prediction success to avoid Heroku slug size exceed
    delete_uploads(upload_folder, f_name)

    return {
            'filename': f_name,
            'flowerName': flower_name,
            'identifiedDisease': disease_name,
            'diseaseDescription': disease_description,
            'accuracyLevel': str(prediction)
        }


def delete_uploads(upload_folder, name):
    try:
        os.remove(os.path.join(upload_folder, name))
    except OSError:
        pass
    return "Done!"


def get_location_names():
    return __available_diseases


def load_saved_artifacts():
    print("Loading saved artificats... start")
    global __data_columns
    global __available_diseases

    with open("./artifacts/available_dieases.json", 'r') as f:
        __data_columns = json.load(f)['data_columns']
        __available_diseases = __data_columns[3:]
    print("Loading saved artifacts... done")
