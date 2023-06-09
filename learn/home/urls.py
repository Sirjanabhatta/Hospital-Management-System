from django.contrib import admin
from django.urls import path
from home import views
urlpatterns = [ 
 
 

 path("",views.homepage,name='home'),

 path("aboutus",views.about,name='about'),
 path("contact",views.contact,name='contact'),
 path("register",views.register_patient,name='register'),
path("admin1",views.admin,name='admin'),
path("add_doctor",views.adddoc,name='adddoct'),
path("add_appointment",views.addappoint,name='addappoint'),
path("patient_login",views.patient_login,name='patient_login'),
path("viewpatients",views.viewpatients,name='viewpatients'),
path("viewdoctors",views.viewdoctors,name='viewdoctors'),
path("viewappointments",views.viewappointments,name='viewappointments'),
path("removedoctor",views.removedoctor,name='removedoct'),
path("removepatient",views.removepatient,name='removepat'),
path("addshift",views.addshift,name='addshift'),
path("viewshifts",views.viewshift,name='viewshift'),
path("setappointments",views.setapp,name='setapp'),
path("takeapp",views.takeapp,name='takeapp'),
path("viewyourapp",views.viewyourappoints,name='viewyourappoints'),
path("removeshift",views.removeshift,name='removeshift'),
path("insertrep",views.insertrep,name='insertrep'),
path("inserttests",views.inserttest,name='inserttest'),
path("viewrep",views.viewreport,name='viewreport'),
path("adminreport",views.adviewreport,name='adviewreport'),
path("loadreportforadmin",views.viewreportadmin,name='adviewreport'),
path("addbill",views.addbill,name='addbill'),
path("viewyourbill",views.viewyourbill,name='viewyourbill'),
path("paid",views.paid,name='paid'),
path("editdoct",views.editdoct,name='editdoct'),
path("viewpayment",views.payment,name='payment'),
path("viewappnts",views.viewappnts,name='viewappnts'),
path("removeapp",views.removeapp,name='removeapp'),
path("logout",views.logout,name='logout')

]