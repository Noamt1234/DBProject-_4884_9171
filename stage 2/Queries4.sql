SELECT e.FirstName, e.LastName, 
       (SELECT DepartmentID 
        FROM Position 
        WHERE PositionID = e.PositionID) AS DepartmentID
FROM Employee e
WHERE e.PositionID IN (
    SELECT PositionID
    FROM PerformanceReview
    WHERE ReviewerID = e.EmployeeID
)
ORDER BY e.LastName, e.FirstName, DepartmentID;
