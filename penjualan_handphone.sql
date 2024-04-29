-- Create database
CREATE DATABASE cellphone_sales;

-- Use database
USE cellphone_sales;

-- Create table for Cellphones
CREATE TABLE db_Cellphones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  brand VARCHAR(50) NOT NULL,
  model VARCHAR(50) NOT NULL,
  price INT NOT NULL
);

-- Create table for Customers
CREATE TABLE db_Customers (
  id INT AUTO_INCREMENT PRIMARY KEY,
  NAME VARCHAR(100) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(50) NOT NULL
);

-- Create table for Sales
CREATE TABLE db_Sales (
  id INT AUTO_INCREMENT PRIMARY KEY,
  cellphone_id INT NOT NULL,
  customer_id INT NOT NULL,
  sale_date DATETIME NOT NULL,
  quantity INT NOT NULL,
  FOREIGN KEY (cellphone_id) REFERENCES db_Cellphones(id),
  FOREIGN KEY (customer_id) REFERENCES db_Customers(id)
);

INSERT INTO db_Cellphones (brand, model, price) VALUES
('Samsung', 'Galaxy S20', 800),
('Apple', 'iPhone 11', 900),
('Google', 'Pixel 5', 700),
('OnePlus', '8 Pro', 850),
('Xiaomi', 'Mi 10', 600);

INSERT INTO db_Customers (NAME, phone_number, email) VALUES
('John Doe', '123-456-7890', 'john@example.com'),
('Jane Smith', '987-654-3210', 'jane@example.com'),
('Michael Johnson', '555-555-5555', 'michael@example.com'),
('Emily Davis', '777-888-9999', 'emily@example.com'),
('Chris Brown', '111-222-3333', 'chris@example.com');

-- Assume 'sale_date' is in the format 'YYYY-MM-DD HH:MM:SS'


