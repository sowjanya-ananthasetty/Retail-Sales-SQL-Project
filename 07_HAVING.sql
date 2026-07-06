
-- ==========================================
-- Phase 6 : HAVING Clause
-- ==========================================

-- Question 64: Display categories having more than 2 products.

select * from products;
select * from categories;
select category_id, count(*) as category_count
from products
group by category_id
having count(*)>2;

-- Question 65: Display suppliers supplying more than 2 products.

select * from suppliers;
select supplier_id, count(*) as supplier_count
from products
group by supplier_id
having count(*)>2; 

-- Question 66: Display cities having more than 1 customer.

select city, count(*) as city_count
from customers
group by city
having count(*) > 1;

-- Question 67: Display states having more than 1 customer.

select state, count(*) as state_count
from customers
group by state
having count(*) >1;

-- Question 68: Display payment methods used more than 3 times.

select payment_method, count(*) as payment_method_count
from orders
group by payment_method
having count(*) > 3;
