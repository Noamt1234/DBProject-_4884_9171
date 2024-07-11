-- Main Program 1: Calculate and Display Average Salary for Multiple Employees and Departments
DECLARE
    dept_id INT;
    avg_salary NUMBER;
    emp_id INT;
    new_salary DECIMAL(10, 2) := 75000.00;
BEGIN
    FOR dept_id IN 190..193 LOOP
        avg_salary := GetAverageSalary(dept_id);
        DBMS_OUTPUT.PUT_LINE('Department ID: ' || dept_id || ' - Average Salary: ' || avg_salary);
    END LOOP;
    FOR emp_id IN 101..103 LOOP
        UpdateEmployeeSalary(emp_id, new_salary);
          DBMS_OUTPUT.PUT_LINE('Employee ID: ' || emp_id || ' salary updated to ' || new_salary || '.');
    END LOOP;
END;
/
-- End of Main Program 1
