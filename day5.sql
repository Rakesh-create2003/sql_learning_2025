Aggregate Functions in SQL.
 
**These are functions that operate on multiple rows and return a single result (like totals, averages, counts).

Common Aggregate Functions

COUNT() → Counts rows

SUM() → Adds values

AVG() → Calculates average

MIN() → Smallest value

MAX() → Largest value

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(20),
    Marks INT
);

select * from students;

INSERT INTO Students VALUES
(1, 'Ravi', 20, 'CSE', 85),
(2, 'Priya', 21, 'ECE', 92),
(3, 'Karthik', 22, 'IT', 76),
(4, 'Divya', 20, 'CSE', 65),
(5, 'Suresh', 23, 'CSE', 90),
(6, 'Anita', 22, 'ECE', 70);

select * from students;

1. COUNT()

-- Count all students
SELECT COUNT(*) AS TotalStudents FROM Students;

-- Count only CSE students
SELECT COUNT(*) AS CSE_Students FROM Students WHERE Department = 'CSE';

-- Count distinct departments
SELECT COUNT(DISTINCT Department) AS DeptCount FROM Students;


2. SUM()

-- Total marks of all students
SELECT SUM(Marks) AS TotalMarks FROM Students;

-- Total marks of CSE students
SELECT SUM(Marks) AS CSE_Marks FROM Students WHERE Department = 'CSE';

3. AVG()

-- Average marks of all students
SELECT AVG(Marks) AS AverageMarks FROM Students;

-- Average age of students in ECE
SELECT AVG(Age) AS AvgAge_ECE FROM Students WHERE Department = 'ECE';


4. MIN() and MAX()

-- Youngest student
SELECT MIN(Age) AS Youngest FROM Students;

-- Oldest student
SELECT MAX(Age) AS Oldest FROM Students;

-- Highest marks
SELECT MAX(Marks) AS HighestMarks FROM Students;

-- Lowest marks in CSE
SELECT MIN(Marks) AS LowestCSE FROM Students WHERE Department = 'CSE';


5. GROUP BY with Aggregates

-- Count students in each department
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department;

-- Average marks in each department
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department;

-- Max marks in each department
SELECT Department, MAX(Marks) AS TopMarks
FROM Students
GROUP BY Department;

6. HAVING with Aggregates

-- Only departments with more than 2 students
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department
HAVING COUNT(*) > 2;

-- Departments where average marks > 80
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 80;

















































