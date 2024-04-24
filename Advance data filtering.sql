-- Active: 1713950288024@@127.0.0.1@3306@test

-- And operator
-- syntax
-- SELECT * FROM table_name WHERE condition_1 ADD condition_2;

SELECT * FROM product WHERE stock_quantity = 50 AND price = 49.99;

SELECT * FROM product WHERE stock_quantity >= 25 AND price >= 50;

-- OR operator
-- syntax
-- SELECT * FROM table_name WHERE condition_1 OR condition_2;

SELECT * FROM customer WHERE address = 'Anytown' OR customer_name = 'Jhone';


-- OR AND operator
SELECT * FROM customer WHERE (address = 'Anycity' OR address = 'Anytown') AND (phone = '222-333-4444' OR phone = '555-123-4567');

-- IN operator
-- syntax
-- SELECT * FROM table_name WHERE column_name IN ('value_1','value_2','value_3','value_4');
SELECT * FROM customer WHERE address = 'Anycity' OR address = 'Anytown' OR address ='Othertown';
-- In this time the code be long one.for that we can use IN operator 
SELECT * FROM customer WHERE address IN ('Anycity','Anytown','Othertown','Anothercity');

-- NOT IN operator
-- syntax
-- SELECT * FROM table_name WHERE column_name NOT IN ('value_1','value_2','value_3','value_4');
SELECT * FROM customer WHERE address NOT IN ('Anycity','Anytown','Othertown','Anothercity');

