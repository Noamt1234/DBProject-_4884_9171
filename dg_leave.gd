
[General]
Version=1

[Preferences]
Username=
Password=2260
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=LEAVE
Count=500

[Record]
Name=LEAVEID
Type=NUMBER
Size=
Data=Sequence(1000)
Master=

[Record]
Name=EMPLOYEEID
Type=NUMBER
Size=
Data=List(select employeeid from employee)
Master=

[Record]
Name=LEAVETYPE
Type=VARCHAR2
Size=50
Data=List('pregnancy', 'Dismissal', 'Sick leave','days off','pension')
Master=

[Record]
Name=RETURNDATE
Type=DATE
Size=
Data=Random(00/01/2020, 29/12/2024)
Master=

