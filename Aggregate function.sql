-- Active: 1713950288024@@127.0.0.1@3306@test

-- COUNT() - count the number of rows
-- MAX() - Return the maximum value
-- MIN() - Return the minimum value
-- SUM() - Return the sum value
-- AVG() - Return the Average value

-- COUNT
SELECT COUNT(product_name) FROM product;

SELECT COUNT(product_name) AS Product_Name_Count FROM product;

SELECT COUNT(*) FROM product;

-- the COUNT aggregate not count NULL rows

-- MAX()
SELECT MAX(price) FROM product;

-- MIN()
SELECT MIN(price) FROM product;

-- SUM()
SELECT SUM(price) FROM product;

SELECT * FROM product;

SELECT SUM(price) FROM product WHERE (product_id = '2') AND (product_id = '1');

-- AVG()
SELECT AVG(price) FROM product;