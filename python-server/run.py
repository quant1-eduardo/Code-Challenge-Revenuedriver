from flask import Flask, request
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
from datetime import date, datetime
from app import app, db
from app.models.travel import Travel



db.session.add(Travel(adUnitID=1,
                    date=datetime.strptime('01/09/21','%d/%m/%y').date(), 
                    adUnitName= 'ad_unit_name_1',
                    typetag=900001,
                    revenueSource='traffic',
                    market='Portugal',
                    queries=2,
                    clicks=0,
                    impressions=float(0),
                    pageRpm=float(0),
                    impressionRpm=float(0),
                    trueRevenue=float(0),
                    coverage=float(0),
                    ctr=float(0)))
db.create_all()

db.session.commit()


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
    

@app.route("/read_file",methods=['POST','PUT'])
def read_csv():

    import pandas as pd
    from sqlalchemy.types import Integer, Text, String, Date
    
    try:
        file = request.files['file']
    except:
        return "<p> Arquivo nao encontrado </p>"    
    filename=secure_filename(file.filename) 
    df = pd.read_csv(filename, error_bad_lines=False, sep=';')
    df = preparingData(df)
    print (df.head())
    print (df.info())

    print (df.describe())
    df.to_sql(name='travel',con=db.engine,index=False, if_exists='replace')
    return "OK"
    

