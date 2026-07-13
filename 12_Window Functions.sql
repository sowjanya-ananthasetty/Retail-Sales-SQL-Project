-- Question 1: Assign row numbers to products by price.

-- Question 2: Rank products by price.

-- Question 3: Dense rank products by price.

-- Question 4: Rank products within each category.

-- Question 5: Display cumulative revenue.

-- Question 6: Compare each month's sales with the previous month using LAG().

-- Question 7: Display next month's sales using LEAD().

-- Question 8: Calculate running total of revenue.

-- Question 9: Display average price by category using OVER().

-- Question 10: Display customer spending rank.

USE retail_sales;
-- Question 1: Assign row numbers to products by price.

select product_id,
       product_name,
       price,
       row_number() over(order by price) as serial_row_number
       from products;
-- Question 2: Rank products by price.

select product_name,
       RANK() over(order by price DESC) as rank_numeric
       from products;
       
-- Question 3: Dense rank products by price.

select product_name,
	   dense_rank() over(order by price DESC) as rank_numeric
       from products;
       
-- Question 4: Rank products within each category.
select * from categories;
select p.product_name, 
	c.category_name,
       RANK() over(partition by c.category_name 
                  order by p.price DESC) as rank_numeric
	   from products p
       JOIN categories c
       ON p.category_id = c.category_id;
       
-- Question 5: Display cumulative revenue.

select order_id,
       quantity*unit_price as revenue,
	   SUM(quantity*unit_price) over(order by order_id) as Cummulative_revenue
       from order_items;

-- Question 8: Calculate running total of revenue.

select order_id,
	   quantity*unit_price as revenue,
       SUM(quantity*unit_price) over(order by order_id) as running_total
       from order_items;
-- Question 9: Display average price by category using OVER().

select p.product_name,
c.category_name,
p.price,
       round(AVG(p.price) over(partition by c.category_id),2) as avg_category_price
       from products p
       join categories c
       ON p.category_id = c.category_id;
 
-- Question 10: Display customer spending rank.

select c.customer_id,
	   c.first_name,
       c.last_name,
       sum(oi.quantity*oi.unit_price) AS total_spending,
       RANK() over(order by SUM(oi.quantity*oi.unit_price) DESC) as customer_rank
       from customers c 
       JOIN orders o
       ON c.customer_id = o.customer_id
       JOIN order_items oi
       ON o.order_id = oi.order_id
       Group by c.customer_id,
                c.first_name,
                c.last_name;
