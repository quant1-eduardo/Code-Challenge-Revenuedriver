from app import db

class Travel (db.Model):   
    #Date;Ad Unit Name;Ad Unit ID;Typetag;Revenue Source;Market;Queries;Clicks;Impressions;Page Rpm;Impression Rpm;True Revenue;Coverage;Ctr
    __tablename__ = "travel"
    date = db.Column(db.Date)
    adUnitID = db.Column (db.Integer,primary_key=True)
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

    def show(self):
        print(self.adUnitID)
        print(self.adUnitName)
        print(self.adUnitName)
        print(self.typetag)
        print(self.revenueSource)
        print(self.market)
        print(self.queries)
        print(self.clicks)
        print(self.impressions)
        print(self.pageRpm)
        print(self.impressionRpm)
        print(self.trueRevenue)
        print(self.coverage)
        print(self.ctr)
        print('____________________')
