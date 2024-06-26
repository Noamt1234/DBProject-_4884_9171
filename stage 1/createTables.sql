CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    DateEstablished DATE
);

CREATE TABLE MedicalSpecialty (
    SpecialtyID INT PRIMARY KEY,
    SpecialtyName VARCHAR(100),
    Description VARCHAR(100)
);

CREATE TABLE Position (
    PositionID INT PRIMARY KEY,
    PositionName VARCHAR(50),
    DepartmentID INT,
    SpecialtyID INT,
    Salary DECIMAL(10, 2),
    CONSTRAINT fk_department FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
    CONSTRAINT fk_specialty FOREIGN KEY (SpecialtyID) REFERENCES MedicalSpecialty(SpecialtyID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    PositionID INT,
    CONSTRAINT fk_position FOREIGN KEY (PositionID) REFERENCES Position(PositionID)
);

CREATE TABLE Leave (
    LeaveID INT PRIMARY KEY,
    EmployeeID INT,
    LeaveType VARCHAR(50),
    ReturnDate DATE,
    CONSTRAINT fk_employee_leave FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

CREATE TABLE PerformanceReview (
    ReviewID INT,
    EmployeeID INT,
    ReviewerID INT,
    ReviewDate DATE,
    Rating INT,
    PRIMARY KEY (ReviewID, EmployeeID,ReviewerID),  -- Composite primary key
    CONSTRAINT fk_employee_review FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    CONSTRAINT fk_reviewer_review FOREIGN KEY (ReviewerID) REFERENCES Employee(EmployeeID)
);
