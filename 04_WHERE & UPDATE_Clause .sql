-- ==========================================
-- Phase 2 : WHERE Clause
-- ==========================================

-- ==========================================
-- WHERE
-- ==========================================

-- Question 32: Display products priced above ₹1000.
SELECT *
FROM products
WHERE price > 1000;

-- Question 33: Display products priced below ₹500.
SELECT *
FROM products
WHERE price < 500;

-- Question 34: Display products priced between ₹500 and ₹5000.
SELECT *
FROM products
WHERE price BETWEEN 500 AND 5000;

-- Question 35: Display customers from Bangalore.
SELECT *
FROM customers
WHERE city = 'Bangalore';

-- Question 36: Display customers from Hyderabad.
SELECT *
FROM customers
WHERE city = 'Hyderabad';

-- Question 37: Display customers not from Bangalore.
SELECT *
FROM customers
WHERE city <> 'Bangalore';

-- Question 38: Display customers from Andhra Pradesh.
SELECT *
FROM customers
WHERE state = 'Andhra Pradesh';

-- Question 39: Display orders placed after 2025-03-01.
SELECT *
FROM orders
WHERE order_date > '2025-03-01';

-- Question 40: Display delivered orders.
SELECT *
FROM orders
WHERE order_status = 'Delivered';

-- Question 41: Display cancelled orders.
SELECT *
FROM orders
WHERE order_status = 'Cancelled';

-- ==========================================
-- LIKE
-- ==========================================

-- Question 42: Display customers whose first name starts with 'R'.
SELECT *
FROM customers
WHERE first_name LIKE 'R%';

-- Question 43: Display customers whose first name ends with 'a'.
SELECT *
FROM customers
WHERE first_name LIKE '%a';

-- Question 44: Display customers whose email ends with 'gmail.com'.
SELECT *
FROM customers
WHERE email LIKE '%gmail.com';

-- Question 45: Display products whose name contains 'Book'.
SELECT *
FROM products
WHERE product_name LIKE '%Book%';

-- Question 46: Display suppliers whose name starts with 'A'.
SELECT *
FROM suppliers
WHERE supplier_name LIKE 'A%';

-- ==========================================
-- IN
-- ==========================================

-- Question 47: Display customers from Bangalore, Hyderabad, and Chennai.
SELECT *
FROM customers
WHERE city IN ('Bangalore', 'Hyderabad', 'Chennai');

-- Question 48: Display orders with Delivered or Pending status.
SELECT *
FROM orders
WHERE order_status IN ('Delivered', 'Pending');

-- Question 49: Display products belonging to category IDs 1, 2, and 5.
SELECT *
FROM products
WHERE category_id IN (1, 2, 5);

-- ==========================================
-- BETWEEN
-- ==========================================

-- Question 50: Display products priced between ₹1000 and ₹10000.
SELECT *
FROM products
WHERE price BETWEEN 1000 AND 10000;

-- Question 51: Display orders placed between January and April.
SELECT *
FROM orders
WHERE order_date BETWEEN '2025-01-01' AND '2025-04-30';

-- ==========================================
-- Phase 3 : UPDATE
-- ==========================================

-- Question 52: Update a customer's city.
UPDATE customers
SET city = 'Gudur'
WHERE city = 'Nellore';

-- Verify the updated customer record.
SELECT *
FROM customers;

-- Question 53: Update a customer's phone number.
UPDATE customers
SET phone = '1234567890'
WHERE customer_id = 12;

-- Verify the updated customer record.
SELECT *
FROM customers
WHERE customer_id = 12;

-- Question 54: Increase the Laptop price.
UPDATE products
SET price = 70000
WHERE product_name = 'Laptop';

-- Verify the updated product.
SELECT *
FROM products
WHERE product_name = 'Laptop';

-- Question 55: Reduce the Football price.
UPDATE products
SET price = 1000
WHERE product_name = 'Football';

-- Verify the updated product.
SELECT *
FROM products
WHERE product_name = 'Football';

-- Question 56: Update the stock quantity of Laptop.
UPDATE products
SET stock_quantity = 50
WHERE product_name = 'Laptop';

-- Verify the updated product.
SELECT *
FROM products
WHERE product_name = 'Laptop';

-- Question 57: Change an order status.
UPDATE orders
SET order_status = 'Pending'
WHERE customer_id = 1;

-- Verify the updated orders.
SELECT *
FROM orders
WHERE customer_id = 1;

-- Question 58: Change a supplier email.
UPDATE suppliers
SET contact_email = 'freshfoods@gmail.com'
WHERE supplier_name = 'Fresh Foods';

-- Verify the updated supplier.
SELECT *
FROM suppliers
WHERE supplier_name = 'Fresh Foods';


