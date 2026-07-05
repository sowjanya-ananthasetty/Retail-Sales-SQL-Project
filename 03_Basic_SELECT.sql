-- ==========================================
-- Phase 1 : Basic SQL Queries
-- ==========================================

-- ==========================================
-- SELECT
-- ==========================================

-- Question 1: Display all customers.
SELECT *
FROM customers;

-- Question 2: Display all products.
SELECT *
FROM products;

-- Question 3: Display all suppliers.
SELECT *
FROM suppliers;

-- Question 4: Display all categories.
SELECT *
FROM categories;

-- Question 5: Display all orders.
SELECT *
FROM orders;

-- Question 6: Display all order items.
SELECT *
FROM order_items;

-- ==========================================
-- Selecting Specific Columns
-- ==========================================

-- Question 7: Display only customer first names.
SELECT first_name
FROM customers;

-- Question 8: Display customer first and last names.
SELECT first_name,
       last_name
FROM customers;

-- Question 9: Display only product names.
SELECT product_name
FROM products;

-- Question 10: Display product name and price.
SELECT product_name,
       price
FROM products;

-- Question 11: Display supplier names.
SELECT supplier_name
FROM suppliers;

-- Question 12: Display customer city and state.
SELECT city,
       state
FROM customers;

-- ==========================================
-- DISTINCT
-- ==========================================

-- Question 13: Display unique cities.
SELECT DISTINCT city
FROM customers;

-- Question 14: Display unique states.
SELECT DISTINCT state
FROM customers;

-- Question 15: Display unique payment methods.
SELECT DISTINCT payment_method
FROM orders;

-- ==========================================
-- ORDER BY
-- ==========================================

-- Question 16: Display customers ordered by first name.
SELECT *
FROM customers
ORDER BY first_name ASC;

-- Question 17: Display products ordered by price (lowest first).
SELECT *
FROM products
ORDER BY price ASC;

-- Question 18: Display products ordered by price (highest first).
SELECT *
FROM products
ORDER BY price DESC;

-- Question 19: Display orders ordered by order date.
SELECT *
FROM orders
ORDER BY order_date ASC;

-- Question 20: Display latest orders.
SELECT *
FROM orders
ORDER BY order_date DESC;

-- Question 21: Display suppliers ordered alphabetically.
SELECT *
FROM suppliers
ORDER BY supplier_name ASC;

-- ==========================================
-- LIMIT
-- ==========================================

-- Question 22: Display the first 5 customers.
SELECT *
FROM customers
LIMIT 5;

-- Question 23: Display the first 10 products.
SELECT *
FROM products
LIMIT 10;

-- Question 24: Display the latest 5 orders.
SELECT *
FROM orders
ORDER BY order_date DESC
LIMIT 5;

-- Question 25: Display the top 3 most expensive products.
SELECT *
FROM products
ORDER BY price DESC
LIMIT 3;

-- Question 26: Display the top 5 cheapest products.
SELECT *
FROM products
ORDER BY price ASC
LIMIT 5;

-- ==========================================
-- Aliases (AS)
-- ==========================================

-- Question 27: Display customer first name as Customer_Name.
SELECT first_name AS Customer_Name
FROM customers;

-- Question 28: Display product price as Selling_Price.
SELECT price AS Selling_Price
FROM products;

-- Question 29: Display supplier name as Supplier.
SELECT supplier_name AS Supplier
FROM suppliers;

-- Question 30: Display order date as Purchase_Date.
SELECT order_date AS Purchase_Date
FROM orders;

-- Question 31: Display product name and stock quantity with aliases.
SELECT product_name AS Product_Name,
       stock_quantity AS Stock_Quantity
FROM products;

