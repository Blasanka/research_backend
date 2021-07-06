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


def detect_disease(file, upload_folder):
    # Saving upload file for future use
    f_name = str(uuid.uuid4()) + '_' + file.filename
    file.save(os.path.join(upload_folder, f_name))

    cnn_model = ker.models.load_model("disease/flower_disease_cnn.h5")
    cnn_model.summary()

    predict_image = image.load_img('uploads\\'+f_name, target_size=(64, 64, 1))
    predict_image = image.img_to_array(predict_image)
    predict_image = np.expand_dims(predict_image, axis=-1)
    predict_image = predict_image.reshape(-1, 64, 64, 1)
    predicted_result = cnn_model.predict(predict_image)
    output = predicted_result[0]

    if output[0] <= 0.5:
        disease_name = "Powdery Mildow"
        disease_description = "Powdery Mildow is a fungas disease creating devastating losses for ornamental plants. " \
                              "Powdery Mildow thrives in cool, humid weather."
    else:
        disease_name = "Healthy"
        disease_description = ""

    prediction = output
    print(prediction)

    return {
            'filename': f_name,
            'flowerName': 'Ross',
            'identifiedDisease': disease_name,
            'diseaseDescription': disease_description,
            'accuracyLevel': 51.02
        }


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
