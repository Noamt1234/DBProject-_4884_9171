-- Function 2: Get Department by Employee ID Returning REF CURSOR
CREATE OR REPLACE FUNCTION GetDepartmentByEmployee(employee_id INT) 
RETURN SYS_REFCURSOR 
IS
    dept_cursor SYS_REFCURSOR;
BEGIN
    OPEN dept_cursor FOR
    SELECT d.DepartmentID, d.DepartmentName, d.DateEstablished
    FROM Department d
    JOIN Position p ON d.DepartmentID = p.DepartmentID
    JOIN Employee e ON p.PositionID = e.PositionID
    WHERE e.EmployeeID = employee_id;

    RETURN dept_cursor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN NULL;
    WHEN OTHERS THEN
        RETURN NULL;
END GetDepartmentByEmployee;
/
-- End of Function 2
