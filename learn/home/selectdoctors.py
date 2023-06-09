
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def selectdoctors():
    mycur.execute ("select did,concat(dfname,' ' ,dlname) as fullname,dsex,dexp,depname,daddress,dqual,dphn,demail from docinfo")
    doct=mycur.fetchall()
    return doct