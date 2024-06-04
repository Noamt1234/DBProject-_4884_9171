
[General]
Version=1

[Preferences]
Username=
Password=2879
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=EMPLOYEE
Count=500

[Record]
Name=EMPLOYEEID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=FIRSTNAME
Type=VARCHAR2
Size=25
Data=FirstName
Master=

[Record]
Name=LASTNAME
Type=VARCHAR2
Size=25
Data=LastName
Master=

[Record]
Name=POSITIONID
Type=NUMBER
Size=
Data=List(select positionid from position)
Master=

