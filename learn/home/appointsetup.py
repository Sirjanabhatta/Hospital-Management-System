
import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()


def setappoint(j,k):
    mycur.execute (" SELECT a.aid,a.adate,a.atime,d.dfname,d.dlname,d.depname,d.dqual,d.dexp FROM appointmentdetails as a INNER JOIN docinfo as d ON a.did=d.did where a.adate='{}' and d.depname='{}' ".format(k,j))
    a=mycur.fetchall()
    return a

def takeappoint(aidd,pidd):
    commd="select * from appointmentsetup where aid= {}".format(aidd)
    mycur.execute(commd)
    val = mycur.fetchall()
    a=len(val) + 1
    if a<=30:
        
        commd1="insert into appointmentsetup(turn,pid,aid) values (%s,%s,%s)"
        vals=(a,pidd,aidd)
        mycur.execute(commd1,vals)
        conn.commit()

