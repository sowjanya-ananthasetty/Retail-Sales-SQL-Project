
-- COUNT()
-- Count total customers.

select count(*) AS total_customers_cont
 from customers;
-- Count total products.

select count(*) As total_products_count
from products;
-- Count total suppliers.

select count(*) AS total_suppliers_count
from suppliers;
-- Count total orders.

select count(*) AS total_orders_count
from orders;
-- Count total categories.

select count(*) as total_category_count
from categories;
-- SUM()
-- Calculate total stock.

select * from products;
select sum(stock_quantity) as total_stock
from products;
-- Calculate total inventory value (price × stock_quantity).

select sum(price * stock_quantity) AS total_inventory
from products;

-- Calculate total revenue from order items.
select * from order_items;
select sum(quantity*unit_price) as total_revenue from order_items;
-- Calculate total quantity sold.

select sum(quantity) as total_quantity from order_items;
-- Calculate total cost of inventory.

select sum(cost_price * stock_quantity) AS total_inventory_cost
From products;

-- AVG()
-- Average product price.

select AVG(price) AS Avg_product_price
From products;

-- Average stock quantity.

select AVG(stock_quantity) AS avg_stock_quantity
From products;
-- Average quantity sold.

select AVG(quantity) AS Avg_quantity_sold
From order_items;
-- Average selling price.

select AVG(unit_price) AS Avg_selling_price 
from order_items;
-- MIN()
-- Cheapest product.

select * from products;

select Min(price) As Cheapest_product_price
From products;

SELECT product_name, price
FROM products
ORDER BY price
LIMIT 1;
-- Lowest stock quantity.

select MIN(stock_quantity) AS Lowest_stock_quantity
from products;
-- MAX()
-- Most expensive product.

select Max(price) AS Most_expensive_product
From products;
-- Highest stock quantity.

select Max(stock_quantity) AS highest_stock_quantity
From products;

SELECT product_name, price
FROM products
ORDER BY price DESC
LIMIT 1;
-- ROUND()
-- Round the average product price to two decimal places.

select Round(AVG(price),2) AS avg_product_price
From products;

-- Combined
-- Display:
-- Total Products
-- Average Price
-- Maximum Price
-- Minimum Price

select Count(*) AS total_products, AVG(price) AS Avg_price,
MAX(price) As maximum_price, MIN(price) As Max_price
From products;

-- Count customers by city.

SELECT
    city,
    COUNT(*) AS customers_city_count
FROM customers
GROUP BY city;
-- Count customers by state.

SELECT
    state,
    COUNT(*) AS customers_state_count
FROM customers
GROUP BY state;
-- Count products by category.
SELECT
    category_id,
    COUNT(*) AS total_products
FROM products
GROUP BY category_id;
-- Count products by supplier.

select * from products;
select * from suppliers;
select supplier_id, count(*) as total_suppliers
from products
group by supplier_id;
-- Average product price by category.

select category_id, AVG(price) as avg_product_price_by_category
from products
group by category_id;
-- Average product price by supplier.

select supplier_id, AVG(price) As avg_product_price_by_supplier
from products
group by supplier_id;
-- Total stock by category.

select category_id, sum(stock_quantity) AS total_stock_by_category
from products
group by category_id;
-- Total stock by supplier.

select supplier_id, sum(stock_quantity) AS total_stock_by_supplier
from products
group by supplier_id;
-- Total revenue by product.

select product_id, sum(quantity * unit_price) as total_revenue_by_product
from order_items
group by product_id;
-- Total quantity sold by product.
select * from orders;

select product_id, sum(quantity) as total_quantity_sold
from order_items
group by product_id;
-- Total orders per customer.

select customer_id, count(*) as total_orders_per_customer
from orders
group by customer_id;
-- Total orders by payment method.

select payment_method, count(*) as total_orders_by_payment_method
from orders
group by payment_method;
-- Total orders by order status.

select order_status, count(*) as total_orders_by_status
from orders 
group by order_status;
-- Average quantity sold by product.

select product_id, Avg(quantity) as avg_quantity_sold_by_product
from order_items
group by product_id;

-- Highest-priced product in each category.

select c.category_name, Max(p.price) as highest_price
from categories c
Join products p
On c.category_id = p.category_id
group by c.category_name;

-- Lowest-priced product in each category.

SELECT c.category_name, MIN(p.price) AS lowest_price
FROM products p
JOIN categories c
on c.category_id=p.category_id
GROUP BY c.category_name;
