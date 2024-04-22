-- Drop the existing table if it exists
DROP TABLE IF EXISTS students;

-- Create students table
CREATE TABLE students(
    Sno INT PRIMARY KEY,
    Sname VARCHAR(255),
    SGPA DECIMAL(4,2),
    Scity VARCHAR(255),
    Cno VARCHAR(255)
);

-- Insert data into students table
INSERT INTO students (Sno, Sname, SGPA, Scity, Cno)
VALUES
    (1, 'Saman', 2.60, 'Kagalle', 'C1'),
    (2, 'Kamal', 2.45, 'Kandy', 'C2'),
    (3, 'Joe', 3.20, 'Galle', 'C3'),
    (4, 'Ruwan', 4.00, 'Kandy', 'C1'),
    (5, 'Asela', 3.50, 'Jaffna', 'C4'),
    (6, 'Asanka', 2.88, 'Galle', 'C2'),
    (7, 'Wasana', 2.75, 'Colombo', 'C3'),
    (8, 'Dilini', 3.35, 'Kandy', 'C1'),
    (9, 'Aruna', 2.76, 'Galle', 'C4'),
    (10, 'Gayani', 3.00, 'Jaffna', 'C4');

-- Drop the existing table if it exists
DROP TABLE IF EXISTS courses;

-- Create courses table
CREATE TABLE courses(
    Cno VARCHAR(255) PRIMARY KEY,
    Cname VARCHAR(255),
    Cduration INT
);	

-- Insert data into courses table
INSERT INTO courses (Cno, Cname, Cduration)
VALUES
    ('C1', 'HNDA', 4),
    ('C2', 'HNDIT', 2),
    ('C3', 'HNDM', 3),
    ('C4', 'HNDE', 2);

-- Select all records from courses table
SELECT * FROM courses;

--print all students name and GPA.
SELECT Sname, SGPA FROM students;


--print name of students with SGPA>3.00 
SELECT Sname
FROM students
WHERE SGPA > 3.00;

--Display Cno and number of students from each course
SELECT Cno, COUNT(*) AS num_students
FROM students
GROUP BY Cno;

--display all the information Sname,SGPA and Cname
SELECT s.Sname, s.SGPA, c.Cname
FROM students s
JOIN courses c ON s.Cno = c.Cno;


--sort the student table with ascending order by SGPA
SELECT *
FROM students
ORDER BY SGPA ASC;

--Briefly explain the role of database administrators

'Database administrators helps to manage and maintain databases,
ensuring integrity. 
They handle database installation, configuration and performance tuning to optimize
system performance.
DBAs oversees data backup and recovery processes, and also anables data privacy.