DELETE FROM PerformanceReview
    WHERE EmployeeID IN (
        SELECT EmployeeID
        FROM Leave
        WHERE LeaveType = 'Unpaid Leave'
    )
    OR ReviewerID IN (
        SELECT EmployeeID
        FROM Leave
        WHERE LeaveType = 'Unpaid Leave'
    );

    DELETE FROM Leave
    WHERE LeaveType = 'Unpaid Leave';

    DELETE FROM Employee
    WHERE EmployeeID IN (
        SELECT EmployeeID
        FROM Leave
        WHERE LeaveType = 'Unpaid Leave'
    );
    
