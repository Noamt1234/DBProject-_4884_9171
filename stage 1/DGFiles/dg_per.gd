
[General]
Version=1

[Preferences]
Username=
Password=2470
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=PERFORMANCEREVIEW
Count=555

[Record]
Name=REVIEWID
Type=NUMBER
Size=
Data=Sequence(5000)
Master=

[Record]
Name=EMPLOYEEID
Type=NUMBER
Size=
Data=List(select employeeid from employee)
Master=

[Record]
Name=REVIEWERID
Type=NUMBER
Size=
Data=List(select employeeid from employee)
Master=

[Record]
Name=REVIEWDATE
Type=DATE
Size=
Data=Random(11/09/2001, 07/10/2023)
Master=

[Record]
Name=RATING
Type=NUMBER
Size=
Data=Random(1, 5)
Master=

