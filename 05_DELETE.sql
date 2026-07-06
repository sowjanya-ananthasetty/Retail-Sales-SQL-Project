--  Phase 4: DELETE
-- Delete one customer.
select * from customers;
select * from order_items;


DELETE FROM order_items
WHERE order_id IN (
    SELECT order_id
    FROM orders
    WHERE customer_id = (
        SELECT customer_id
        FROM customers
        WHERE first_name = 'Rayan'
    )
);

delete from orders
WHERE customer_id = (
        SELECT customer_id
        FROM customers
        WHERE first_name = 'Rayan'
);

delete from customers where first_name='Rayan';

-- Delete one supplier.
select * from order_items;
select * from products;
select * from suppliers;

delete from order_items
where product_id IN(select product_id from products 
where supplier_id = (select supplier_id from suppliers where supplier_name='Fresh Foods'));


delete from products 
where supplier_id = (select supplier_id from suppliers where supplier_name='Fresh Foods');

delete from suppliers where supplier_name = 'Fresh Foods';

-- Delete one cancelled order.
select * from orders;
select * from customers;
select * from order_items;

delete from order_items 
where order_id = (select order_id from orders 
where order_status = 'Cancelled' and payment_method='Credit card');

delete from orders where order_status = 'Cancelled' and payment_method='Credit card';

-- Delete one category.
select * from products;
select * from categories;


delete from order_items where product_id IN (select product_id from products
where category_id=(select category_id from categories where category_name = 'Clothing'));

delete from products
where category_id=(select category_id from categories where category_name = 'Clothing'); 

delete from categories
where category_name='Clothing';

-- Delete one product.
select * from products;
select * from order_items;

delete from order_items 
where product_id = (select product_id from products where product_name='Running Shoes');

delete from products 
where product_name='Running Shoes';
