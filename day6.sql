CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(20),
    Marks INT
);

INSERT INTO Students VALUES
(1, 'Ravi', 20, 'CSE', 85),
(2, 'Priya', 21, 'ECE', 92),
(3, 'Karthik', 22, 'IT', 76),
(4, 'Divya', 20, 'CSE', 65),
(5, 'Suresh', 23, 'CSE', 90),
(6, 'Anita', 22, 'ECE', 70);

select * from students;

1. Simple GROUP BY

-- Count students in each department
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department;

-- Average marks in each department
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department;

-- Maximum marks in each department
SELECT Department, MAX(Marks) AS TopMarks
FROM Students
GROUP BY Department;

2. GROUP BY with Multiple Columns

-- Count by Department + Age
SELECT Department, Age, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department, Age;

-- Sum of marks by Department + Age
SELECT Department, Age, SUM(Marks) AS TotalMarks
FROM Students
GROUP BY Department, Age;


3. Filtering Groups (HAVING)

👉 WHERE filters rows before grouping.
👉 HAVING filters groups after grouping.

-- Departments with more than 2 students
SELECT Department, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department
HAVING COUNT(*) > 2;

-- Departments with average marks above 80
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department
HAVING AVG(Marks) > 80;

4. Combining WHERE + GROUP BY + HAVING

-- Only consider students age > 20, then group
SELECT Department, COUNT(*) AS StudentCount
FROM Students
WHERE Age > 20
GROUP BY Department;

-- Only groups with at least 2 students AND average marks > 75
SELECT Department, AVG(Marks) AS AvgMarks, COUNT(*) AS StudentCount
FROM Students
GROUP BY Department
HAVING COUNT(*) >= 2 AND AVG(Marks) > 75;

5. ORDER BY with GROUP BY

-- Show departments ordered by average marks
SELECT Department, AVG(Marks) AS AvgMarks
FROM Students
GROUP BY Department
ORDER BY AvgMarks DESC;



















