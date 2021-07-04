from flask import Flask, request, jsonify
# import engine
import os
from disease.util import detect_disease


app = Flask(__name__)
app.config.from_object('config')


@app.route("/api/v1.0/recommendations/<int:id>", methods=["GET"])
def get_recomendations(id):
    print("product_id: " + str(id))
    return str(id)


@app.route('/api/v1.0/detect-disease', methods=['POST'])
def detect():
    file = request.files['file']
    folder = app.config['UPLOAD_FOLDER']

    response = jsonify({
        'result': {
            'filename': detect_disease(file, folder),
            'flowerName': 'Ross',
            'identifiedDisease': 'Black spot',
            'diseaseDescription': '',
            'accuracyLevel': 50.0
        }
    })

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


@app.route('/api/v1.0/transfer', methods=['POST'])
def transfer():
    text = request.data
    print(text)
    return "Success!"

if __name__ == "__main__":
    app.run("192.168.1.4")

