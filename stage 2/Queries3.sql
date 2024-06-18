SELECT d.DepartmentName, p.PositionName, ms.SpecialtyName
FROM Department d, 
     (SELECT * FROM Position WHERE PositionID BETWEEN 1 AND 20) p, 
     MedicalSpecialty ms
WHERE d.DepartmentID = p.DepartmentID
  AND p.SpecialtyID = ms.SpecialtyID
GROUP BY d.DepartmentName, p.PositionName, ms.SpecialtyName;
