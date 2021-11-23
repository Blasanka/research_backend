from flask import Flask, request, jsonify
# import engine
from disease.util import detect_disease, delete_uploads

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
        'result': detect_disease(file, folder),
    })

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


@app.route('/api/v1.0/uploads/<name>', methods=['DELETE'])
def delete_uploaded_file(name):
    folder = app.config['UPLOAD_FOLDER']

    response = jsonify({
        'result': delete_uploads(folder, name),
    })

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


@app.route('/api/v1.0/disease-help', methods=['POST'])
def get_guidance():
    data = request.data

    response = jsonify({
        'id': 1,
        'preventionGuide': "Reflect sunlight to affected plants",
        'stepsToPrevent': "1. Separate affected plants from others",
        'solutions': "Since the disease spread rapidly cutting and burning affected once advisable.",
    })

    response.headers.add('Access-Control-Allow-Origin', '*')

    return response


@app.route('/api/v1.0/transfer', methods=['POST'])
def transfer():
    text = request.data
    print(text)
    return "Success! " + str(text)


if __name__ == "__main__":
    app.run(host="flower-disease-cnn.herokuapp.com", use_reloader=False)
