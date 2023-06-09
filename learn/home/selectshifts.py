
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def viewshiftt():
    mycur.execute ("select * from docshift")
    shifts=mycur.fetchall()
    return shifts