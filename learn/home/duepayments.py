
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def payments():
    mycur.execute("select * from bill" )
    paym=mycur.fetchall()
    return paym

