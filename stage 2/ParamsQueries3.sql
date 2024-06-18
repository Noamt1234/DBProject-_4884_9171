SELECT d.DateEstablished, ms.SpecialtyName, p.PositionId
FROM Department d, MedicalSpecialty ms, Position p
WHERE d.DepartmentID = p.DepartmentID
AND p.SpecialtyID = ms.SpecialtyID
AND ms.Description LIKE &<name = "ms_desc" type = "string" hint = "Add % after the name" default = "Psychiatry%">;
