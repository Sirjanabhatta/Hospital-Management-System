import mysql.connector 
conn=mysql.connector.connect ( user='root',password='admin',database='hospital_manag')
mycur=conn.cursor()

def funct2(a,b,c,d,e,f,g,h,i,j):
    r="insert into docinfo(did,dfname,dlname,dsex,dexp,depname,daddress,dqual, dphn,demail) values (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)"
    s=(a,b,c,d,e,f,g,h,i,j)
    mycur.execute(r,s)
    conn.commit()

def updatee(did,upinfo,upwith):

    mycur.execute("update docinfo set {}='{}' where did={}".format(upinfo,upwith,did))
    conn.commit()
   
  

   