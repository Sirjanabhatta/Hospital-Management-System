
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def selectreport(id,datee):
    mycur.execute ("select test,valuee from patreport where pid={} and rdate='{}'".format(id,datee))
    rep=mycur.fetchall()
    return rep
   