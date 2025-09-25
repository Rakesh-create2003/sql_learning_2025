🔹 What is SQL Querying Data?

👉 Querying Data means asking questions to the database using the SELECT statement.
It is used to retrieve and display data stored in tables.

SELECT Name, Age FROM Students WHERE Department = 'CSE';

--Syntax of SELECT
--SELECT column1, column2, ...
--FROM table_name
--WHERE condition
--ORDER BY column ASC|DESC;

--1. Select All Data 0r everything

SELECT * FROM Students;

--2. Select Specific Columns

SELECT Name, Age FROM Students;

--3.Filtering Data (WHERE)

-- Students from CSE dept
SELECT * FROM Students WHERE Department = 'CSE';

-- Age greater than 21
SELECT * FROM Students WHERE Age > 21;

-- Age lesser than 21
select * from students where age< 21;

-- Names starting with 'P'
SELECT * FROM Students WHERE Name LIKE 'P%';

-- Names ending with 'a'
select * from students where name like '%a';

-- Names starting to ending with 'a'
select * from students where name like '%k%';

--Using IN
select * from students where department in ('cse','IT');

--4. Sorting Data (ORDER BY)

-- Ascending order by Age
SELECT * FROM Students ORDER BY Age ASC;

-- Descending order by Name
SELECT * FROM Students ORDER BY Name DESC;

-- Multiple columns (Age first, then Name)
SELECT * FROM Students ORDER BY Age ASC, Name asc;


5. Limiting Rows

-- SQL Server
SELECT TOP 3 * FROM Students;

SELECT TOP 3 * FROM Students ORDER BY Age DESC;

SELECT TOP 3 * FROM Students ORDER BY Age asc;



-- MySQL / PostgreSQL
--SELECT * FROM Students LIMIT 3;

6. Aggregate Functions

-- Count students
SELECT COUNT(*) FROM Students;
SELECT COUNT(*) AS TotalStudents FROM Students;

-- Average age
SELECT AVG(Age) FROM Students;
SELECT AVG(Age) AS AverageAge FROM Students;

-- Maximum & Minimum Age
SELECT MAX(Age), MIN(Age) FROM Students;
SELECT MAX(Age) AS Oldest, MIN(Age) AS Youngest FROM Students;


7. GROUP BY

-- Count how many students in each Department
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department;

-- Average age per department
SELECT Department, AVG(Age) AS AvgAge
FROM Students
GROUP BY Department;

SELECT AVG(Age) FROM Students;

SELECT Department 
FROM Students
GROUP BY Department;

select * from students;

select age from students group by Age;

--SELECT age,max(age) as older from students group by age;

8. HAVING (condition on GROUP BY)

SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department
HAVING COUNT(*) > 1

9. DISTINCT

SELECT DISTINCT Department FROM Students;

10. Aliases

SELECT Name AS StudentName, Age AS YearsOld FROM Students;

--11.- Alias for table

SELECT s.Name, s.Department
FROM Students AS s;

select * from students;

12. Subquery

SELECT * FROM Students
WHERE Age > (SELECT AVG(Age) FROM Students);

select * from students;

13. BETWEEN and IN

SELECT * FROM Students WHERE Age BETWEEN 20 AND 22;

SELECT * FROM Students WHERE Department IN ('CSE', 'IT');

14. LIKE for Pattern Matching

SELECT * FROM Students WHERE Name LIKE 'A%';   -- starts with A

SELECT * FROM Students WHERE Name LIKE '%a';   -- ends with a

SELECT * FROM Students WHERE Name LIKE '%sh%'; -- contains 'sh'

15 .Joins (Basics)

--Create a new table first:

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    StudentID INT
);

select * from courses;

--Insert some sample data:

INSERT INTO Courses VALUES
(101, 'Database Systems', 1),
(102, 'Operating Systems', 2),
(103, 'Networks', 1),
(104, 'Python Programming', 3);

select * from courses;

-- Inner Join (students with their courses)
SELECT s.Name, c.CourseName
FROM Students s
JOIN Courses c ON s.StudentID = c.StudentID;

-- Left Join (all students, even if no course)
SELECT s.Name, c.CourseName
FROM Students s
LEFT JOIN Courses c ON s.StudentID = c.StudentID;



















































