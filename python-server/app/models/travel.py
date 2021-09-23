from app import db

class Travel (db.Model):   
    #Date;Ad Unit Name;Ad Unit ID;Typetag;Revenue Source;Market;Queries;Clicks;Impressions;Page Rpm;Impression Rpm;True Revenue;Coverage;Ctr
    __tablename__ = "travel"
    id = db.Column (db.Integer, primary_key=True)
    date = db.Column(db.Date)
    adUnitID = db.Column (db.Integer)
    adUnitName = db.Column(db.String)
    typetag = db.Column(db.Integer)
    revenueSource = db.Column(db.String)
    market = db.Column(db.String)
    queries = db.Column(db.Integer)
    clicks = db.Column(db.Integer)
    impressions = db.Column(db.Integer)
    pageRpm = db.Column(db.Float)
    impressionRpm = db.Column(db.Float)
    trueRevenue = db.Column(db.Float)
    coverage = db.Column(db.Float)
    ctr = db.Column(db.Float)
