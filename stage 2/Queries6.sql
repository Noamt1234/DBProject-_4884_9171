UPDATE Position
SET Salary = Salary + 10000
WHERE DepartmentID IN (
    SELECT DepartmentID
    FROM Department
    WHERE DepartmentName LIKE 'Neurology%'
);

UPDATE PerformanceReview
SET Rating = Rating + 1
WHERE EmployeeID IN (
    SELECT EmployeeID
    FROM Leave
    WHERE LeaveType = 'Maternity Leave'
);
