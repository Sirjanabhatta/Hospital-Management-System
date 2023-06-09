import pandas as pd
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def removedoct(id,lname):

    mycur.execute("delete from shift where did={}".format(id))
    conn.commit()
    mycur.execute("select aid from appointmentdetails where did={}".format(id))
    p=mycur.fetchall()
    for i in range (0,len(p)):
        mycur.execute("delete from appointmentSetup where aid={}".format(p[i][0]))
        conn.commit()
    mycur.execute("delete from appointmentdetails where did={}".format(id))
    conn.commit()
    remitem="DELETE FROM docinfo where did=%s and dlname=%s"
    a=(id,lname)
    mycur.execute(remitem,a)
    conn.commit()

    

def rmvshft(id,day):
    print('aps delsdwaw')
    mycur.execute("select aid from appointmentdetails where did={}".format(id))
    p=mycur.fetchall()
    if p!=[]:
        for i in range (0,len(p)):
            print(p[0][0])
            mycur.execute ("select adate from appointmentdetails where aid={}".format(p[0][0]))
            dataa=mycur.fetchall()
            aid=p[0][0]
            d = pd.Timestamp(dataa[0][0])
            sday= d.day_name()
            if sday==day:
                mycur.execute("delete from appointmentSetup where aid={}".format(aid))
                conn.commit()
                mycur.execute("delete from appointmentdetails where did={}".format(id))
                conn.commit()
                mycur.execute("delete from shift where did={} and sday='{}'".format(id,day))
                conn.commit()
    else:

        mycur.execute("delete from shift where did={} and sday='{}'".format(id,day))
        conn.commit()



