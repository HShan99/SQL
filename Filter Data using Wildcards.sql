-- Active: 1713950288024@@127.0.0.1@3306@test

-- Whildcard
-- syntax
-- SELECT * FROM table_name WHERE column_name LIKE '%' ho '_'
-- % - Represents any characters
-- _ - Represents one character including

-- Filtering starting A character word in description
SELECT * FROM product WHERE description LIKE 'A%';

-- Filtering Six character word in product_name
SELECT * FROM product WHERE product_name LIKE '______';

-- filtering gaming word in product table description
SELECT * FROM product WHERE description LIKE '%gaming%';

-- filtering description ending with setting word
SELECT * FROM product WHERE description LIKE '%ports.';

SELECT * FROM product WHERE description LIKE '%ports.' OR description LIKE '%settings.';

-- filtering using NOT LIKE operators
SELECT * FROM product WHERE product_name NOT LIKE 'M%' AND product_name NOT LIKE 'r%';

