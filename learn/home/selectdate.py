from datetime import datetime
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def selectdatee(id):
    mycur.execute ("select distinct rdate from patreport where pid={}".format(id))
    datee=mycur.fetchall()
    all_date = []
    for d in datee:
        c = d[0]
        
        req_date = c.strftime("%Y-%m-%d")
        all_date.append(req_date)
    return all_date
    