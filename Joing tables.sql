-- Active: 1713950288024@@127.0.0.1@3306
-- Create the products table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    price DECIMAL(10, 2),
    category_id INT,
    description TEXT
);

-- Insert dummy data into the products table
-- Insert more dummy data into the products table
INSERT INTO products (product_name, price, category_id, description)
VALUES 
    ('Product 5', 59.99, 2, 'Description of Product 5'),
    ('Product 6', 69.99, 3, 'Description of Product 6'),
    ('Product 7', 79.99, 1, 'Description of Product 7'),
    ('Product 8', 89.99, 2, 'Description of Product 8'),
    ('Product 9', 99.99, 3, 'Description of Product 9'),
    ('Product 10', 109.99, 1, 'Description of Product 10');



SELECT * FROM products;
-- Create the category table
CREATE TABLE category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255),
    cato_description TEXT
);

-- Insert dummy data into the category table
INSERT INTO category (category_name, cato_description)
VALUES 
    ('Electronics', 'Description of Electronics category'),
    ('Clothing', 'Description of Clothing category'),
    ('Home Appliances', 'Description of Home Appliances category'),
    ('Beauty & Personal Care', 'Description of Beauty & Personal Care category'),
    ('Toys & Games', 'Description of Toys & Games category');



-- INNER JOIN table

-- In this scenario join the products table with category table
-- display all the details about two table data in one table with only match data  
SELECT products.*, category.* FROM products INNER JOIN category ON products.category_id = category.category_id;

-- In that selected columns are displayed
SELECT products.product_id, products.product_name, category.category_id, category.category_name FROM products INNER JOIN category ON products.category_id = category.category_id;
-- same code easy method
SELECT p.product_id, p.product_name, c.category_id, c.category_name FROM products AS p INNER JOIN category AS c ON p.category_id = c.category_id;



-- Left JOIN table

-- A LEFT JOIN in SQL is used to retrieve data from multiple tables based on a related column between them. 
-- It returns all records from the left table (referred to as the "left" table) and the matched records from the 
-- right table (referred to as the "right" table). If there is no match found in the right table, 
-- NULL values are returned for the columns of the right table

INSERT INTO products (product_name, price, category_id, description)
VALUES 
    ('Product 5', 59.99, '', 'Description of Product 5'),
    ('Product 6', 69.99, '', 'Description of Product 6');

SELECT products.product_id,products.product_name,products.category_id,category.category_name FROM products LEFT JOIN category ON products.category_id = category.category_id;


-- RIGHT JOIN table
-- A RIGHT JOIN in SQL is similar to a LEFT JOIN, 
-- but it returns all records from the right table (the "right" table in the JOIN operation) and 
-- the matched records from the left table. 
-- If there's no match found in the left table, 
-- NULL values are returned for the columns of the left table.

SELECT p.product_id,p.product_name,p.category_id,c.category_name FROM category c RIGHT JOIN products p ON c.category_id  = p.category_id;