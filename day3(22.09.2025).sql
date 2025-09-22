--Main SQL Data Types (commonly used)
--1. Numeric Types
--
--INT → Whole numbers (−2,147,483,648 to 2,147,483,647)
--
--SMALLINT, BIGINT → Smaller / Larger ranges
--
--DECIMAL(p,s) or NUMERIC(p,s) → Fixed precision numbers (money, prices)
--
--FLOAT, REAL → Approximate decimal values
--
--2. String/Text Types
--
--CHAR(n) → Fixed length string
--
--VARCHAR(n) → Variable length string
--
--TEXT → Large text data
--
--3. Date/Time Types
--
--DATE → Only date (YYYY-MM-DD)
--
--TIME → Only time (HH:MI:SS)
--
--DATETIME or TIMESTAMP → Both date and time
--
--4. Other Types
--
--BOOLEAN → True/False values
--
--BLOB → Binary large object (images, files)


CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,                 -- Integer
    EmpName VARCHAR(50),                   -- Variable string
    Salary DECIMAL(10,2),                  -- Decimal with 2 digits after point
    JoinDate DATE,                         -- Only date
    LastLogin DATETIME,                    -- Date + Time
    Active BIT                             -- Boolean (0 = False, 1 = True in SQL Server)
);

select * from employees;

INSERT INTO Employees (EmpID, EmpName, Salary, JoinDate, LastLogin, Active) VALUES
(1, 'Ravi Kumar', 45000.50, '2023-06-01', '2023-09-20 10:30:00', 1),
(2, 'Priya Sharma', 52000.75, '2022-11-15', '2023-09-19 14:10:45', 1),
(3, 'Karthik', 39000.00, '2021-01-10', '2023-09-18 09:00:00', 0);

select * from employees;

insert into employees (empid,empname,salary,joindate,lastlogin,active) VALUES 
(4,'rakesh',50000.1,'2025-09-29','2023-08-09 10:40:00',2)

insert into employees (empid,empname,salary,joindate,lastlogin,active) VALUES 
(5,'rakesh',50000.123,'2025-09-29','2023-08-09 10:40:00',2)

select * from employees;


-- Select all employees
SELECT * FROM Employees;

-- Show only name and salary
SELECT EmpName, Salary FROM Employees;

-- Find employees joined after Jan 2023
SELECT * FROM Employees WHERE JoinDate > '2023-01-01';

-- Employees who are Active
SELECT * FROM Employees WHERE Active = 1;

-- Find employees with salary greater than 50000
SELECT EmpName, Salary FROM Employees WHERE Salary > 50000;

-- Order employees by Join Date (latest first)
SELECT * FROM Employees ORDER BY JoinDate DESC;

-- Order employees by Join Date ( first joing)
SELECT * FROM Employees ORDER BY JoinDate asc;
































