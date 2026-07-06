
-- ==========================================
-- Phase 7 : INNER JOIN
-- ==========================================

-- Question 1: Display all customers with their orders.

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       o.order_id,
       o.order_date,
       o.order_status
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;


-- Question 2: Display products with their category names.

SELECT p.product_name,
       c.category_name
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id;


-- Question 3: Display products with their supplier names.

SELECT p.product_name,
       s.supplier_name
FROM products p
INNER JOIN suppliers s
ON p.supplier_id = s.supplier_id;


-- Question 4: Display order details with product names.

SELECT oi.order_id,
       p.product_name,
       oi.quantity,
       p.price
FROM order_items oi
INNER JOIN products p
ON oi.product_id = p.product_id;

-- Question 5: Display customer names and payment methods.

SELECT c.first_name,
       c.last_name,
       o.payment_method
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- ==========================================
-- Phase 7 : LEFT JOIN
-- ==========================================

-- Question 1: Display all customers and their orders
-- (including customers who have never placed an order).

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       o.order_id,
       o.order_date
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


-- Question 2: Display all categories and their products
-- (including categories with no products).

SELECT c.category_name,
       p.product_name
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id;


-- Question 3: Display all suppliers and the products they supply
-- (including suppliers with no products).

SELECT s.supplier_name,
       p.product_name
FROM suppliers s
LEFT JOIN products p
ON s.supplier_id = p.supplier_id;


-- Question 4: Display all products and their order details
-- (including products that have never been ordered).

SELECT p.product_name,
       oi.order_id,
       oi.quantity
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id;


-- Question 5: Display all customers and their payment methods
-- (including customers who have never placed an order).

SELECT c.first_name,
       c.last_name,
       o.payment_method
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;


-- Question 6: Display all categories and the average price
-- of their products (including categories with no products).

SELECT c.category_id,
       c.category_name,
       AVG(p.price) AS avg_product_price
FROM categories c
LEFT JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_id,
         c.category_name;


-- Question 7: Display all suppliers and the total stock of products they supply (including suppliers with no products).

SELECT s.supplier_id,
       s.supplier_name,
       SUM(p.stock_quantity) AS total_stock_product
FROM suppliers s
LEFT JOIN products p
ON s.supplier_id = p.supplier_id
GROUP BY s.supplier_id,
         s.supplier_name;


-- ==========================================
-- Phase 7 : RIGHT JOIN
-- ==========================================
-- Display all orders and the customer's first and last name, including orders that don't have a matching customer.

select o.order_id, o.order_date, c.first_name, c.last_name
from customers c
RIGHT JOIN orders o
ON o.customer_id=c.customer_id;


-- Display all products and their supplier names, including products that have no supplier.

select p.product_name, s.supplier_name
from suppliers s
RIGHT JOIN products p
ON p.supplier_id=s.supplier_id;



-- Display all order items with the product name and quantity, including order items whose product does not exist.

select oi.order_id, p.product_name, oi.quantity
from products p
RIGHT JOIN order_items oi
ON oi.product_id=p.product_id;


-- Display all products with their category names and prices, including products that don't belong to any category.

select p.product_name, c.category_name, p.price
from categories c
RIGHT JOIN products p
ON c.category_id=p.category_id;

-- Display the total stock quantity for every supplier, including products that don't have a matching supplier.

select s.supplier_id, s.supplier_name, sum(p.stock_quantity) as total_stock_quantity
from suppliers s 
RIGHT JOIN products p 
ON s.supplier_id = p.supplier_id
group by s.supplier_id,
s.supplier_name;
