--# Summary of DDL Commands with Examples
--
--CREATE → Create new objects
--
--ALTER → Modify existing objects
--
--DROP → Delete objects
--
--TRUNCATE → Remove all data from a table
--
--RENAME → Rename objects
--
--COMMENT → Add notes/documentation

🔹 1. CREATE – Used to create objects
-- Create a database
CREATE DATABASE emp_db;

use emp_db;

-- Create a table
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2)
);

select * from employees;

-- Create a view
CREATE VIEW HighSalary AS
SELECT EmpName, Salary FROM Employees WHERE Salary > 50000;


select * from Highsalary;

🔹 2. ALTER – Modify existing objects

-- Add a new column
ALTER TABLE Employees ADD Department VARCHAR(50);

select * from employees;

-- Modify column datatype
ALTER TABLE Employees ALTER COLUMN Salary DECIMAL(12,2);

SELECT * from employees ;

-- Rename column (SQL Server)
ALTER TABLE Employees RENAME COLUMN EmpName TO EmployeeName;

EXEC sp_rename 'dbo.Employees.EmpID', 'EmployeeID', 'COLUMN';


3. DROP – Delete objects permanently.

-- Drop a table
DROP TABLE Employees;

select * from employees

-- Drop a database
DROP DATABASE SchoolDB;

-- Drop a view
DROP VIEW HighSalary;

4. TRUNCATE – Remove all data but keep structure
-- Clear all records from table

TRUNCATE TABLE Employees;



 















