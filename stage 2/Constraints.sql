ALTER TABLE Position
ADD CONSTRAINT chk_min_salary
CHECK (Salary >= 10000);

ALTER TABLE Employee
MODIFY FirstName VARCHAR(25) DEFAULT 'Tyrion';

ALTER TABLE Employee
MODIFY LastName VARCHAR(25) DEFAULT 'Lannister';

ALTER TABLE Leave
MODIFY LeaveType VARCHAR(50) NOT NULL;
