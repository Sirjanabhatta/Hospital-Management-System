import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()

def addshiftt(a,b,c,d ):

    r="insert into shift values (%s,%s,%s,%s)"
    s=(a,b,c,d)

    mycur.execute(r,s)
    conn.commit()

  
