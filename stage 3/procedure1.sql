-- Procedure 1: Update Employee Salary with Multiple DML Commands and Records
CREATE OR REPLACE PROCEDURE UpdateEmployeeSalary(
    emp_id INT,
    new_salary DECIMAL
) 
IS
    old_salary DECIMAL(10, 2);
    pos_id INT;
BEGIN
    SELECT Salary, PositionID INTO old_salary, pos_id 
    FROM Position 
    WHERE PositionID = (SELECT PositionID FROM Employee WHERE EmployeeID = emp_id);

    UPDATE Position 
    SET Salary = new_salary
    WHERE PositionID = pos_id;
    
    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'No rows updated');
    END IF;

    COMMIT;
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error updating salary: ' || SQLERRM);
END UpdateEmployeeSalary;
/
-- End of Procedure 1
