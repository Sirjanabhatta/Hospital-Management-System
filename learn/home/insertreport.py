from datetime import datetime
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()



def report(pid,test,value):
    global pdate
    pdate=datetime.today().strftime('%Y-%m-%d')
    r="insert into patreport values (%s,%s,%s,%s)"
    s=(pid,pdate,test,value)
    mycur.execute(r,s)
    conn.commit()

def displayrepnow(idd):
    prdate=datetime.today().strftime('%Y-%m-%d')
    mycur.execute ("select test,valuee from patreport where pid={} and rdate='{}'".format(idd,prdate))
    testt=mycur.fetchall()
    return testt
    