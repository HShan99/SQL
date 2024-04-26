-- Active: 1713950288024@@127.0.0.1@3306@test
SELECT * FROM product;

-- GROUP BY clause use for group the values 
SELECT price, COUNT(*) AS price_count FROM product GROUP BY price;
 
--  HAVING clause also same as WHERE clause.But we use with GROUP BY clause only
SELECT price, COUNT(*) AS product_count FROM product GROUP BY price HAVING product_count < '2';


-- Order of clauses (Top to Bottom)
-- SELECT    |
-- FROM      |
-- WHERE     |
-- GROUP BY  |
-- HAVING    |
-- ORDER BY  | 

SELECT product_name, price, COUNT(*) FROM product GROUP BY product_name,price;

SELECT product_name, COUNT(*) FROM product GROUP BY product_name ORDER BY price;
  