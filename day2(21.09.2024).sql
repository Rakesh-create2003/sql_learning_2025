--SQL DML (Data Manipulation Language) commands are used to insert, update, delete, and retrieve data inside tables.
--The main DML commands are:
--
--INSERT → Add data
--
--UPDATE → Modify data
--
--DELETE → Remove data
--
--SELECT → Retrieve data


CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(20)
);

select * from students;

INSERT INTO Students (StudentID, Name, Age, Department) VALUES
(1, 'Ravi', 20, 'CSE'),
(2, 'Priya', 21, 'ECE'),
(3, 'Karthik', 22, 'IT'),
(4, 'Divya', 20, 'EEE'),
(5, 'Suresh', 23, 'CSE'),
(6,'Rakesh',22,'cse'),
(7,'anura',10,'IT');


select * from students;

-- Update one column
UPDATE Students
SET Age = 21
WHERE StudentID = 1;

-- Update multiple columns
UPDATE Students
SET Name = 'suresh raina', Department = 'mech',age=30
WHERE StudentID = 5;

select * from students;


-- Update all rows
UPDATE Students
SET Department = 'Engineering';


-- Delete specific row
DELETE FROM Students
WHERE StudentID = 3;

select * from students;

-- Delete rows by condition
DELETE FROM Students
WHERE Age < 21;

-- Delete all rows (but keep table)
DELETE FROM Students;

-- Select all columns
select * from students;

-- Select specific columns
SELECT Name, Age FROM Students;

-- With condition
SELECT * FROM Students WHERE Department = 'CSE';

select * from students where age=20;

-- With condition
SELECT * FROM Students WHERE age>=21;

-- With sorting
SELECT * FROM Students ORDER BY Age DESC;

-- With sorting
SELECT * FROM Students ORDER BY Age aSC;

-- With filtering (pattern)
SELECT * FROM Students WHERE Department  LIKE 'c%';

-- Count how many students in each department
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department;

select * from students;


select age, count(*) as studentagecount
from Students
group by age;











