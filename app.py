from flask import Flask
#import engine
app = Flask(__name__)

@app.route("/api/v1.0/recommendations/", methods=["GET"])
def get_recomendations():
    print("product_id: " + str(3))
    return 3
  #  return engine.get_recommendations(id)

if __name__ == "__main__":
    app.run(host= '0.0.0.0')
    
    