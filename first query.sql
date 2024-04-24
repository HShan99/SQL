-- Active: 1713950288024@@127.0.0.1@3306@tes

-- Create the table named 'student'
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insert dummy data into the 'student' table
INSERT INTO students (student_name, email)
VALUES 
    ('Alice', 'alice@example.com'),
    ('Bob', 'bob@example.com'),
    ('Charlie', 'charlie@example.com'),
    ('David', 'david@example.com'),
    ('Emma', 'emma@example.com'),
    ('Frank', 'frank@example.com'),
    ('Grace', 'grace@example.com'),
    ('Hannah', 'hannah@example.com'),
    ('Isaac', 'isaac@example.com'),
    ('Julia', 'julia@example.com');

-- Verify the data by selecting all rows from the table
SELECT * FROM student;

DESCRIBE students;

SELECT student_name FROM students;

SELECT student_id,student_name FROM students;

SELECT * FROM students;

-- Create the table named 'employee'
CREATE TABLE employee (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    department VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL
);

-- Insert dummy data into the 'employee' table
INSERT INTO employee (employee_name, salary, department, date_of_birth)
VALUES 
    ('John Doe', 50000.00, 'IT', '1990-05-15'),
    ('Jane Smith', 60000.00, 'HR', '1988-10-20'),
    ('Michael Johnson', 55000.00, 'Finance', '1992-03-25'),
    ('Emily Williams', 52000.00, 'Marketing', '1995-07-12'),
    ('William Brown', 58000.00, 'IT', '1987-12-08'),
    ('Olivia Taylor', 63000.00, 'HR', '1993-09-17'),
    ('James Jones', 54000.00, 'Finance', '1991-02-28'),
    ('Sophia Davis', 51000.00, 'Marketing', '1989-06-23');

-- Verify the data by selecting all rows from the table
SELECT * FROM employee;

--  where key word
SELECT * FROM employee WHERE employee_name = 'John Doe';


-- As key word
SELECT employee_id AS ID,employee_name AS 'Name',date_of_birth AS 'Birth date' FROM employee;

-- shortcut for AS key word
-- Then no need to put AS key word.only put space between the column name and the new one
SELECT employee_id ID,employee_name 'Name',date_of_birth 'Birth date' FROM employee;

-- sort method (give the order)
SELECT employee_id, employee_name, salary, department, date_of_birth FROM employee ORDER BY date_of_birth;

-- for descending order
SELECT employee_id, employee_name, salary, department, date_of_birth FROM employee ORDER BY date_of_birth DESC;
SELECT employee_id, employee_name, salary, department, date_of_birth FROM employee ORDER BY salary DESC;

-- identifies to unique values using DISTINCT key word
SELECT DISTINCT salary FROM employee ORDER BY employee_name DESC;

SELECT DISTINCT employee_name FROM employee;

-- LIMIT key word
-- Use for limit the table rows 
SELECT * FROM employee LIMIT 4;
-- the provide first 4 rows in the table

SELECT * FROM employee ORDER BY salary DESC LIMIT 5;

-- OFFSET key word 
-- use for take to bulk of rows in the middle of table
-- mada thyana cade tikak ganna

SELECT * FROM employee LIMIT 3 OFFSET 4;

SELECT * FROM employee ORDER BY salary DESC LIMIT 2 OFFSET 5;

-- shortcut method
-- In this method OFFSET is define first and LIMIT is define secondly
-- first value is OFFSET value and second value is LIMIT value
select * FROM employee LIMIT 4,2;
