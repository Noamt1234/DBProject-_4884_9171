SELECT pr.*
FROM PerformanceReview pr, Employee e, Position p, Department d
WHERE pr.EmployeeID = e.EmployeeID
AND e.PositionID = p.PositionID
AND p.DepartmentID = d.DepartmentID
AND d.DepartmentName LIKE &<name = "dep_name" type = "string" hint = "Add % after the name">;
