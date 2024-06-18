
[General]
Version=1

[Preferences]
Username=
Password=2205
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=DEPARTMENT
Count=400

[Record]
Name=DEPARTMENTID
Type=NUMBER
Size=
Data=Sequence(100)
Master=

[Record]
Name=DEPARTMENTNAME
Type=VARCHAR2
Size=100
Data=list('Cardiology','Neurology','Orthopedics','Pediatrics','Oncology','Radiology','Pathology','Dermatology','Ophthalmology', 'Gastroenterology')
= + Sequence(1)
Master=

[Record]
Name=DATEESTABLISHED
Type=DATE
Size=
Data=Random(17/10/2010,26/12/2020)
Master=

