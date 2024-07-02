SELECT e.LastName, e.FirstName, 
       (SELECT p.DepartmentID 
        FROM Position p 
        WHERE p.PositionID = e.PositionID) AS DepartmentID
FROM Employee e
WHERE e.EmployeeID IN (
    SELECT pr.ReviewerID
    FROM PerformanceReview pr
    WHERE pr.ReviewerID = e.EmployeeID
)
ORDER BY e.LastName, e.FirstName, DepartmentID;
