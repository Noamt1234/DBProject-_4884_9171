
[General]
Version=1

[Preferences]
Username=
Password=2106
Database=
DateFormat=
CommitCount=0
CommitDelay=0
InitScript=

[Table]
Owner=C##RIAHI
Name=MEDICALSPECIALTY
Count=500

[Record]
Name=SPECIALTYID
Type=NUMBER
Size=
Data=Sequence(1)
Master=

[Record]
Name=SPECIALTYNAME
Type=VARCHAR2
Size=100
Data=list('A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T')
= + Sequence(1)
Master=

[Record]
Name=DESCRIPTION
Type=VARCHAR2
Size=100
Data=list(
=    'Cardiology: Treats heart and blood vessel disorders.',
=    'Neurology: Manages brain and nervous system disorders.',
=    'Orthopedic Surgery: Corrects musculoskeletal system issues.',
=    'Pediatric Surgery: Performs surgery on children.',
=    'General Surgery: Operates on abdominal organs.',
=    'Obstetrics and Gynecology: Manages childbirth and female health.',
=    'Anesthesiology: Provides pain relief during surgery.',
=    'Radiology: Diagnoses diseases through medical imaging.',
=    'Oncology: Specializes in cancer treatment.',
=    'Psychiatry: Treats mental and emotional disorders.',
=    'Dermatology: Focuses on skin, hair, nails.',
=    'Urology: Treats urinary and male reproductive systems.',
=    'Nephrology: Manages kidney health and diseases.',
=    'Gastroenterology: Treats digestive system disorders.',
=    'Endocrinology: Manages hormonal and metabolic disorders.',
=    'Hematology: Treats blood and blood diseases.',
=    'Infectious Disease: Manages infections and contagious diseases.',
=    'Pulmonology: Treats respiratory tract diseases.',
=    'Rheumatology: Treats autoimmune and inflammatory diseases.',
=    'Allergy and Immunology: Manages allergies and immune disorders.'
=)
Master=

