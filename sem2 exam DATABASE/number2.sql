DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    age INT,
    address VARCHAR(255)
);

INSERT INTO employees (employee_id, name, age, address)
VALUES
    (1001, 'Rohan', 26, 'Delhi'),
    (1002, 'Ankit', 30, 'Gurgaon'),
    (1003, 'Gaurav', 27, 'Mumbai'),
    (1004, 'Raja', 32, 'Nagpur');

SELECT * FROM employees;

--select command to display the details of the employee_id 1004
SELECT * FROM employees WHERE employee_id = 1004;
--displaying all information of the table employees
SELECT * FROM employees;
--display all records of the employees whose names start wth charactr 'r'
SELECT * FROM employees WHERE name LIKE 'r%';

--write a selct command to display id, age and name of the employees with their age in both ascendind and descending order
SELECT employee_id, age, name FROM employees ORDER BY age ASC; -- Ascending order

SELECT employee_id, age, name FROM employees ORDER BY age DESC; -- Descending order

--select the different adresses of employees using the sql select dictict command
SELECT DISTINCT address
FROM employees;




