-- **********************************************
-- Assignment2No2 IT2351 Jenn Howard
-- from jenns_guitar_shop
-- create table with number count and ship value
-- **********************************************

use jenns_guitar_shop;
select order_id, count(*) as "Total Orders",
sum(ship_amount) as "Ship Value"
from orders
group by order_id, "Ship Value"
order by order_id, "Ship Value";

