-- Function 1: Get Average Salary Using Explicit Cursor
CREATE OR REPLACE FUNCTION GetAverageSalary(dept_id INT) 
RETURN NUMBER 
IS
    avg_salary NUMBER := 0;
    total_salary NUMBER := 0;
    employee_count NUMBER := 0;
    salary NUMBER; -- Variable to fetch individual salary
    CURSOR salary_cursor IS
        SELECT Salary FROM Position WHERE DepartmentID = dept_id;
BEGIN
    OPEN salary_cursor;
    LOOP
        FETCH salary_cursor INTO salary;
        EXIT WHEN salary_cursor%NOTFOUND;
        total_salary := total_salary + salary; -- Accumulate salaries
        employee_count := employee_count + 1;
    END LOOP;
    CLOSE salary_cursor;

    IF employee_count > 0 THEN
        avg_salary := total_salary / employee_count; -- Calculate average salary
    ELSE
        avg_salary := 0;
    END IF;

    RETURN avg_salary;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0;
    WHEN OTHERS THEN
        RETURN -1;  -- Indicates an error
END GetAverageSalary;
/
-- End of Function 1
