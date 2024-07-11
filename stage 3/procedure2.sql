-- Procedure2: Grant Leave to Employee with IF-ELSE and Loop
CREATE OR REPLACE PROCEDURE GrantLeave(
    emp_id INT,
    leave_type VARCHAR2,
    return_date DATE
) 
IS
    has_high_rating BOOLEAN := FALSE;
BEGIN
    -- Check if the employee has any performance reviews with rating > 6
    FOR review_rec IN (
        SELECT Rating
        FROM PerformanceReview
        WHERE EmployeeID = emp_id
    ) LOOP
        IF review_rec.Rating > 6 THEN
            has_high_rating := TRUE;
            EXIT; -- Exit the loop if a high rating is found
        END IF;
    END LOOP;

    -- If employee has a high rating, grant leave; otherwise, do not grant leave
    IF has_high_rating THEN
        -- Outer loop to simulate multiple conditions
        FOR i IN 1..3 LOOP
            DBMS_OUTPUT.PUT_LINE('Processing condition set ' || i || ':');
            
            -- Inner loop to simulate processing within each condition set
            FOR j IN 1..2 LOOP
                DBMS_OUTPUT.PUT_LINE('  Processing condition ' || j || ' within set ' || i || ':');
            END LOOP;
        END LOOP;

        -- Grant leave if all conditions are met
        INSERT INTO Leave (LeaveID, EmployeeID, LeaveType, ReturnDate)
        VALUES (Leave_SEQ.NEXTVAL, emp_id, leave_type, return_date);

        COMMIT;
        DBMS_OUTPUT.PUT_LINE('Leave granted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee does not meet leave criteria based on performance review.');
    END IF;

EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error granting leave: ' || SQLERRM);
END GrantLeave;
/
-- End of Procedure2
