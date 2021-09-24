from flask import Flask, request
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
from os import environ

app = Flask(__name__)

dbName = environ['MYSQL_DATABASE']
print('*****************************************************************')
print(dbName)
dbuser = environ['MYSQL_USER']
dbpass = environ['MYSQL_PASSWORD']
app.config["SQLALCHEMY_DATABASE_URI"] = "mysql://root:fdkafj4314O@revenuedriver-db"
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

url = 'mysql://%s:%s@%s' % (dbuser, dbpass, 'revenuedriver-db')
create_str = "CREATE DATABASE IF NOT EXISTS %s ;" % (dbName)

db = SQLAlchemy(app)
db.engine.execute(create_str)
db.engine.execute('use {}'.format(dbName))
db.create_all()