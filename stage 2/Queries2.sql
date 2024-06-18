SELECT DISTINCT d.DepartmentName, e.EmployeeID, l.ReturnDate
FROM Department d, Position p, Employee e, Leave l
WHERE d.DepartmentID = p.DepartmentID
  AND p.PositionID = e.PositionID
  AND e.EmployeeID = l.EmployeeID
  AND e.EmployeeID IN (
    SELECT l.EmployeeID
    FROM Leave l
    WHERE EXTRACT(YEAR FROM l.ReturnDate) BETWEEN 2010 AND 2013
);
