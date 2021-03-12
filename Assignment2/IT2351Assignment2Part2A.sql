-- *********************************************************
-- IT2351 Assignment 2Part 2 B - Jenn Howard
-- INNER JOIN customer_last_name, customer_first_name
-- customer_city, customer_state from customers 
-- and order_date, ship_date from orders
-- output sorted by state, city, combo last name, first name
-- *********************************************************

use om;
select customers.customer_first_name, customers.customer_last_name,
customers.customer_city, customers.customer_state, orders.order_date, 
orders.shipped_date
from customers 
join orders
on orders.customer_id = customers.customer_id;
-- select concat (customer_last_name, ', ', customer_first_name) 
-- as "fullname" from customers
order by  customers.customer_state, customers.customer_city, fullname;


