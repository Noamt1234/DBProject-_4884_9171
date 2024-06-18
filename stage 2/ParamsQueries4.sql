SELECT e.EmployeeID, e.FirstName, e.LastName
FROM Employee e, PerformanceReview pr, Position p, Department d
WHERE e.EmployeeID = pr.EmployeeID
AND e.PositionID BETWEEN &<name = "pos_id1" type = "integer" default = 100> AND &<name = "pos_id2" type = "integer" default = 499> 
AND p.DepartmentID = d.DepartmentID
AND pr.ReviewDate < &<name = "date" type = date>;
