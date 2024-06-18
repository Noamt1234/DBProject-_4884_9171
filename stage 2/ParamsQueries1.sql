SELECT e.EmployeeID, e.FirstName, e.LastName
FROM Employee e
JOIN Leave l ON e.EmployeeID = l.EmployeeID
WHERE l.LeaveType = &<name = l_type list = "Sick Leave, Casual Leave, Maternity Leave, 
Paternity Leave, Annual Leave,
    Compensatory Leave, Bereavement Leave, Marriage Leave, Study Leave, Unpaid Leave" type = "string"> 
  AND l.ReturnDate BETWEEN &<name = d_from type = date> AND &<name = d_to type = date>;
