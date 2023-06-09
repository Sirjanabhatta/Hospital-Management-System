import pandas as pd
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()

def funct3(a,b,c):
    d = pd.Timestamp(b)
    sday= d.day_name()
    commd="select sfrom from shift where did={} and sday= '{}'".format(c,sday)
    mycur.execute(commd)
    data= mycur.fetchall()
    atime=data[0][0]
    r="insert into appointmentdetails(aid,adate,atime,did) values (%s,%s,%s,%s)"
    s=(a,b,atime,c)
    mycur.execute(r,s)
    conn.commit()
