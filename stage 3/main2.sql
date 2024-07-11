-- Main Program 2: Get Department and Grant Leave
DECLARE
    emp_id INT := 101;
    dept_cursor SYS_REFCURSOR;
    dept_rec Department%ROWTYPE;
    leave_type VARCHAR2(50) := 'Medical';
    return_date DATE := SYSDATE + 30;
BEGIN
    dept_cursor := GetDepartmentByEmployee(emp_id);

    LOOP
        FETCH dept_cursor INTO dept_rec;
        EXIT WHEN dept_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Department ID: ' || dept_rec.DepartmentID);
        DBMS_OUTPUT.PUT_LINE('Department Name: ' || dept_rec.DepartmentName);
        DBMS_OUTPUT.PUT_LINE('Date Established: ' || dept_rec.DateEstablished);
    END LOOP;

    CLOSE dept_cursor;

    GrantLeave(emp_id, leave_type, return_date);
    DBMS_OUTPUT.PUT_LINE('Leave granted.');
END;
/
-- End of Main Program 2
