-- ==========================================
-- Phase 9 : Subqueries
-- ==========================================

-- Question 1: Display the product(s) with the highest price.

SELECT product_name,
       price
FROM products
WHERE price = (
    SELECT MAX(price)
    FROM products
);


-- Question 2: Display the product(s) with the lowest price.

SELECT product_name,
       price
FROM products
WHERE price = (
    SELECT MIN(price)
    FROM products
);


-- Question 3: Display customers who have placed at least one order.

SELECT customer_id,
       first_name,
       last_name
FROM customers
WHERE customer_id IN (
    SELECT customer_id
    FROM orders
);


-- Question 4: Display customers who have never placed an order.

SELECT customer_id,
       first_name,
       last_name
FROM customers
WHERE customer_id NOT IN (
    SELECT customer_id
    FROM orders
);


-- Question 5: Display products whose price is greater than
-- the average product price.

SELECT product_name,
       price
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);


-- Question 6: Display suppliers who supply at least one product.

SELECT supplier_id,
       supplier_name
FROM suppliers
WHERE supplier_id IN (
    SELECT supplier_id
    FROM products
);


-- Question 7: Display categories that have at least one product.

SELECT category_id,
       category_name
FROM categories
WHERE category_id IN (
    SELECT category_id
    FROM products
);


-- Question 8: Display products that have never been ordered.

SELECT product_id,
       product_name
FROM products
WHERE product_id NOT IN (
    SELECT product_id
    FROM order_items
);



-- Question 9: Display the most expensive product
-- in each category.

SELECT p1.product_id,
       p1.product_name,
       p1.category_id,
       p1.price
FROM products p1
WHERE p1.price = (
    SELECT MAX(p2.price)
    FROM products p2
    WHERE p2.category_id = p1.category_id
);
