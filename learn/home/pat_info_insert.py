
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def funct1(a,b,c,d,e,f,g):
  
    r="insert into patientinfo(pfname,plname,psex,paage,paddress, pemail, pphn) values (%s,%s,%s,%s,%s,%s,%s)"
    s=(a,b,c,d,e,f,g)
    mycur.execute(r,s)
    conn.commit()


def extractnewpid():
     mycur.execute("select pid from patientinfo order by pid desc limit 1")
     a=mycur.fetchall()
     return a[0][0]