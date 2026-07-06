-- ==========================================
-- Phase 8 : Multiple Table JOINs
-- ==========================================

-- Question 1: Display customer names along with their order IDs
-- and payment methods.

SELECT c.first_name,
       c.last_name,
       o.order_id,
       o.payment_method
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


-- Question 2: Display customer names, order IDs,
-- product names, and quantities ordered.

SELECT c.first_name,
       c.last_name,
       o.order_id,
       p.product_name,
       oi.quantity
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;


-- Question 3: Display product names,
-- category names, and supplier names.

SELECT p.product_name,
       c.category_name,
       s.supplier_name
FROM products p
JOIN categories c
ON p.category_id = c.category_id
JOIN suppliers s
ON p.supplier_id = s.supplier_id;


-- Question 4: Display customer names,
-- order dates, product names,
-- quantities, and prices.

SELECT c.first_name,
       c.last_name,
       o.order_date,
       p.product_name,
       oi.quantity,
       p.price
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;


-- Question 5: Display each order with the customer name
-- and the total number of products in that order.

SELECT o.order_id,
       c.first_name,
       c.last_name,
       COUNT(oi.product_id) AS total_products
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
GROUP BY o.order_id,
         c.first_name,
         c.last_name;


-- Question 6: Display the total revenue generated
-- by each customer.

SELECT c.first_name,
       c.last_name,
       SUM(oi.quantity * p.price) AS total_revenue
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id
GROUP BY c.first_name,
         c.last_name;


-- Question 7: Display each supplier and the number
-- of products they supply.

SELECT s.supplier_name,
       COUNT(p.product_id) AS total_products
FROM suppliers s
JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_name;
