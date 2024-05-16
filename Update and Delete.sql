-- Active: 1713950288024@@127.0.0.1@3306@test
SELECT * FROM employee

UPDATE employee SET department = 'ICT' WHERE employee_id = 1

UPDATE employee SET date_of_birth = '1999-08-30' WHERE employee_id = 1

SELECT * FROM employee

UPDATE employee SET salary = salary + 500

SELECT * FROM employee




-- Delete query

SELECT * FROM students

DELETE FROM students WHERE student_id = 1

SELECT * FROM student

INSERT INTO student (username,email)VALUES('shan', 'shan@gmail.com'),
('Harsa', 'harsha@gmail.com')

DELETE FROM student

TRUNCATE TABLE student