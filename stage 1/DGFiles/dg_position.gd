
[General]
Version=1

[Preferences]
Username=
Password=2649
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=POSITION
Count=500

[Record]
Name=POSITIONID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=POSITIONNAME
Type=VARCHAR2
Size=50
Data=list('Chief Medical Officer', 'Hospital Administrator', 'Registered Nurse', 'Nurse Practitioner', 'Medical Assistant', 'Physician', 'Surgeon', 'Anesthesiologist', 'Radiologist', 'Cardiologist', 'Neurologist', 'Pediatrician', 'Obstetrician/Gynecologist', 'Pharmacist', 'Laboratory Technician', 'Physical Therapist', 'Occupational Therapist', 'Respiratory Therapist', 'Clinical Social Worker', 'Dietitian')
= + Sequence(1)
Master=

[Record]
Name=DEPARTMENTID
Type=NUMBER
Size=
Data=List(select departmentid from department)
Master=

[Record]
Name=SPECIALTYID
Type=NUMBER
Size=
Data=List(select specialtyid from medicalspecialty)
Master=

[Record]
Name=SALARY
Type=NUMBER
Size=10,2
Data=Random(10000,50000)
Master=

