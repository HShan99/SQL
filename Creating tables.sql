-- Active: 1713950288024@@127.0.0.1@3306@test

SELECT * FROM employee

-- Create a new table using old table structure
-- syntax
-- CREATE TABLE (New_Table_Name) LIKE (Old_Table_Name) 
CREATE TABLE New_employee LIKE employee

SELECT * FROM new_employee

-- Deleting table 
DROP Table new_employee

SELECT * FROM new_employee


-- create table with data with another table
-- syntax
-- CREATE TABLE new_table_name SELECT column_1,column_2 FROM Old_table_name

CREATE TABLE New_Employee SELECT employee_name,salary,department FROM employee

SELECT * FROM New_Employee

EXPLAIN Employee

-- In that scenario the only comes table structures.but not come the table settings.the primary key and others keys not comes to the new table


-- create a new table 
CREATE TABLE User(
    user_id INT AUTO_INCREMENT,
    user_name VARCHAR(20),
    user_password VARCHAR(20),
    PRIMARY KEY(user_id)
);
EXPLAIN User

INSERT INTO `user` (user_name,user_password)VALUES('shan','12345')

INSERT INTO `user` (user_name,user_password)VALUES('harsha','0987654')

SELECT * FROM `user`
