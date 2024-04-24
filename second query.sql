-- Active: 1713950288024@@127.0.0.1@3306@test

-- Create the table named 'customer'
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    address VARCHAR(255)
);

-- Insert 20 rows of dummy data into the 'customer' table
INSERT INTO customer (customer_name, email, phone, address)
VALUES 
    ('John Doe', 'john@example.com', '123-456-7890', ' Anytown'),
    ('Jane Smith', 'jane@example.com', '987-654-3210', 'Othertown'),
    ('Michael Johnson', 'michael@example.com', '555-123-4567', 'Anycity'),
    ('Emily Williams', 'emily@example.com', '222-333-4444', 'Anothercity'),
    ('William Brown', 'william@example.com', '111-222-3333', 'Yetanothercity'),
    ('Olivia Taylor', 'olivia@example.com', '444-555-6666', 'Somewhereville'),
    ('James Jones', 'james@example.com', '777-888-9999', 'Nowhereville'),
    ('Sophia Davis', 'sophia@example.com', '666-777-8888', 'Elsewhere'),
    ('Ethan Wilson', 'ethan@example.com', '333-444-5555', 'Anytown'),
    ('Emma Martinez', 'emma@example.com', '555-666-7777', 'Othertown'),
    ('Alexander Garcia', 'alexander@example.com', '888-999-0000', 'Anycity'),
    ('Mia Rodriguez', 'mia@example.com', '999-000-1111', 'Anothercity'),
    ('Benjamin Lopez', 'benjamin@example.com', '444-555-6666', 'Yetanothercity'),
    ('Charlotte Perez', 'charlotte@example.com', '777-888-9999', 'Somewhereville'),
    ('Daniel Sanchez', 'daniel@example.com', '222-333-4444', 'Nowhereville'),
    ('Amelia Adams', 'amelia@example.com', '666-777-8888', 'Elsewhere'),
    ('Henry King', 'henry@example.com', '333-444-5555', 'Anytown'),
    ('Chloe Scott', 'chloe@example.com', '555-666-7777', 'Othertown'),
    ('Liam Green', 'liam@example.com', '888-999-0000', 'Anycity'),
    ('Ava Evans', 'ava@example.com', '999-000-1111', 'Anothercity');

-- Verify the data by selecting all rows from the table
SELECT * FROM customer;

-- Create the table named 'product'
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description TEXT,
    stock_quantity INT NOT NULL
);

-- Insert 10 rows of dummy data into the 'product' table
INSERT INTO product (product_name, price, description, stock_quantity)
VALUES 
    ('Keyboard', 49.99, 'Mechanical gaming keyboard with customizable RGB lighting.', 50),
    ('Mouse', 29.99, 'High-precision gaming mouse with adjustable DPI settings.', 60),
    ('Monitor', 299.99, '27-inch 4K monitor with HDR support.', 20),
    ('Printer', 199.99, 'All-in-one printer with wireless connectivity.', 30),
    ('External Hard Drive', 99.99, '1TB portable external hard drive with USB 3.0.', 40),
    ('Router', 79.99, 'Dual-band Wi-Fi router with gigabit ethernet ports.', 25),
    ('Webcam', 69.99, 'HD webcam with built-in microphone for video conferencing.', 15),
    ('Speakers', 129.99, '2.1-channel multimedia speakers with subwoofer.', 35),
    ('Wireless Earbuds', 79.99, 'True wireless earbuds with Bluetooth 5.0 connectivity.', 45),
    ('Wireless Charger', 39.99, 'Fast-charging wireless charger for smartphones.', 55);

-- Verify the data by selecting all rows from the table
SELECT * FROM product;


-- where clause 
-- use for filter the data in data base
-- syntax
-- SELECT * FROM table_name WHERE condition;

-- clause operators 

-- equal operator
SELECT * FROM customer WHERE address = 'Anytown';

-- Not equal operator
SELECT * FROM customer WHERE address != 'Anytown';
-- same as
SELECT * FROM customer WHERE address <> 'Anytown';

-- > operator
SELECT * FROM product WHERE price > 100;

-- >= operator
-- in that scenarios first use where clause and secondly use other things 
select * FROM product WHERE price >=50 ORDER BY price;

-- < operator
SELECT * FROM product WHERE stock_quantity < 40;

-- <= operator 
SELECT * FROM product WHERE price <= 200;

-- Between operator
SELECT * FROM product WHERE stock_quantity BETWEEN 20 AND 50 ORDER BY price;

SELECT * FROM product WHERE price BETWEEN 100 AND 300;

-- IS NULL key word
-- use for check to null the column
SELECT * FROM product WHERE description IS NULL;

-- IS NOT NULL
SELECT * FROM product WHERE description IS NOT NULL;