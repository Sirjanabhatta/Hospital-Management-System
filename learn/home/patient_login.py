import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def login_patients(a,b):

   
    commd1="Select pid from patientinfo where pid = '{}' and plname='{}' ".format(b,a)
    
    mycur.execute(commd1)
    val=mycur.fetchall()
   
    if (val==[]):
        return False
    else:
        commd2="select * from patientinfo where pid='{}'".format(b)
        mycur.execute(commd2)
        val2=mycur.fetchall()
        return val2  
    
    