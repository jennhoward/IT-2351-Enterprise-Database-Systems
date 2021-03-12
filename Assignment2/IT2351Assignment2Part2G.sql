-- ***********************************************
-- IT2351 Assignment 2 Part G - Jenn Howard
-- output all OH orders with the following info
-- include customer names and title purchases
-- ***********************************************
use om;
select customers.customer_state, items.title from customers 
join orders on orders.customer_id = customers.customer_id
join order_details on order_details.order_id = orders.order_id
join items on items.item_id = order_details.item_id
where customers.customer_state like "OH" 
order by customers.customer_state, customers.customer_last_name, 
customers.customer_first_name, items.title;