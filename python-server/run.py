from flask import Flask, request
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
from datetime import date, datetime
from app import app, db
from app.models.travel import Travel


@app.route("/")
def home():
    
    return "<p>Hello there!</p>"

def preparingData(df):
    df.rename(
        columns=(
            {
                'Date': 'date',
                'Ad Unit Name': 'adUnitName',
                'Ad Unit ID': 'adUnitID',
                'Typetag':'typetag',
                'Revenue Source':'revenueSource',
                'Market':'market',
                'Queries':'queries',
                'Clicks':'clicks',
                'Impressions':'impressions',
                'Page Rpm':'pageRpm',
                'Impression Rpm':'impressionRpm',
                'True Revenue':'trueRevenue',
                'Coverage':'coverage',
                'Ctr':'ctr'
            }
            ), 
        inplace=True,
        )
    df['trueRevenue'] = df['trueRevenue'].str.replace(r'\D','',regex=True).astype(float)
    df['coverage'] = df['coverage'].str.replace(r'\D','',regex=True).astype(float)
    return df
    

def saveLine(dfLine):
    new = Travel(adUnitID=dfLine['adUnitID'],
            date=dfLine['date'], 
            adUnitName = dfLine['adUnitName'],
            typetag = dfLine['typetag'],
            revenueSource = dfLine['revenueSource'],
            market = dfLine['market'],
            queries = dfLine['queries'],
            clicks = dfLine['clicks'],
            impressions = dfLine['impressions'],
            pageRpm = dfLine['pageRpm'],
            impressionRpm = dfLine['impressionRpm'],
            trueRevenue = dfLine['trueRevenue'],
            coverage = dfLine['coverage'],
            ctr = dfLine['ctr']
        )
    db.session.add(new)
        
@app.route("/saveData",methods=['POST','PUT'])
def saveData():
    import pandas as pd
    try:
        file = request.files['file']
    except:
        return "<p> File not found </p>"    
    filename=secure_filename(file.filename) 
    df = pd.read_csv(filename,  sep=';')
    df = preparingData(df)
    print (df.head())
    print (df.info())

    print (df.describe())
    map(saveLine,df)
    db.session.commit()

    print("Data file save successfully:")
        
    return "<p> Data file saved successfully </p>"

@app.route("/readData",methods=['POST','PUT'])
def readData():
    travels = Travel.query.all()
    for t in travels:
        t.show()
    return '\n Data readen successfully \n Please check the server logs \n '
