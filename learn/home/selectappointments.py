
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def selectappointments():
    mycur.execute (" SELECT * from apdetails")
    a=mycur.fetchall()
    return a


def selectthoseappointments(idd):
    mycur.execute (" SELECT * from apdetails where aid={}".format(idd))
    a=mycur.fetchall()
    return a


def viewyourappnts(x):
    mycur.execute (" SELECT a.adate,a.atime,concat(dfname,' ',d.dlname),d.depname,d.dqual,d.dexp,ap.turn,ap.statuss FROM appointmentdetails as a INNER JOIN docinfo as d inner join appointmentSetup as ap  ON a.did=d.did and ap.aid=a.aid where ap.pid={}".format(x))
    a=mycur.fetchall()
    return a
    

def removeappnt(id):
    mycur.execute("delete from appointmentSetup where aid={}".format(id))
    conn.commit()
    mycur.execute("delete from appointmentdetails where aid={}".format(id))
    conn.commit()

def selectappnttaken(id):
    mycur.execute ("SELECT concat(pfname,' ',plname),turn,pphn FROM appointmentsetup natural join patientinfo where aid={} order by turn".format(id))
    a=mycur.fetchall()
    return a
