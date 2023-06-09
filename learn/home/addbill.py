import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()

def addb(a,b,c,d,e,f):
    r="insert into paymentinfo(pid,datee,opdcost,labcost,medicinecost,miscellaneous) values (%s,%s,%s,%s,%s,%s)"
    s=(a,b,c,d,e,f)
    mycur.execute(r,s)
    conn.commit()
  
def totalbill(id):
    mycur.execute("select Total_Cost from bill where pid={} order by datee desc limit 1".format(id))
    tot=mycur.fetchall()

    if (tot==[] ):
        return 0
    else:
        return tot[0][0]
    
  
def viewbill(id):
    mycur.execute("select * from bill where pid={} order by datee desc limit 1".format(id))
    tot=mycur.fetchall()
    return tot

def paymentdone(id):
    mycur.execute("update paymentinfo set statuss='paid' where pid={} and statuss='Unpaid'".format(id))
    conn.commit()
    
    
 