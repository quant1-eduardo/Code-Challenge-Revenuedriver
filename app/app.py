from flask import Flask, request
from werkzeug.utils import secure_filename

app = Flask(__name__)

@app.route("/")
def home():
    
    return "<p>Hello there!</p>"

@app.route("/read_file",methods=['POST','PUT'])
def read_csv():
    import pandas as pd
    try:
        file = request.files['file']
    except:
        return "<p> Arquivo nao encontrado </p>"    
    filename=secure_filename(file.filename) 
    df = pd.read_csv(filename, error_bad_lines=False, sep=';')
    print (df)
    print (df.head())
    print (df.info())

    print (df.describe())
    return "OK"
    

