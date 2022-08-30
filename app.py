#import libraries
import numpy as np
from flask import Flask, render_template, request
import pickle#Initialize the flask App
app = Flask(__name__)
# model = pickle.load(open("model_r.pkl", "rb"))

#default page of our web-app
@app.route('/')
def home():
    return render_template('index.html')

# prediction function
def ValuePredictor(to_predict_list):
    to_predict = np.array(to_predict_list).reshape(1, 18)
    model = pickle.load(open("model_r.pkl", "rb"))
    result = model.predict(to_predict)
    return result[0]

#To use the predict button in our web-app
@app.route('/result',methods=['POST'])
def predict():
    if request.method == 'POST':
        to_predict_list = request.form.to_dict()
        to_predict_list = list(to_predict_list.values())
        to_predict_list = list(map(int, to_predict_list))
        result = ValuePredictor(to_predict_list)       
        if int(result)== 1:
            prediction ='Status: Not at Risk'
        else:
            prediction ='Status: At Risk'           
        return render_template("index.html", prediction_text = prediction)
    

if __name__ == "__main__":
    app.run(debug=True)