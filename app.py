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
            'flowerName': 'Ross'
        }
    })

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


if __name__ == "__main__":
    app.run("192.168.1.4")

