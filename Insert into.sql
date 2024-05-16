-- Active: 1713950288024@@127.0.0.1@3306
SELECT * FROM products

INSERT INTO products (product_name,price,category_id,description) VALUES('NewProduct', 3000, 5, 'NewProduct description')

SELECT * FROM products

-- take values from another table

INSERT INTO customer (customer_name,email,phone,address) SELECT product_name,price,category_id,description FROM products WHERE product_id = 4 LIMIT 1

SELECT * FROM customer

SELECT * FROM products