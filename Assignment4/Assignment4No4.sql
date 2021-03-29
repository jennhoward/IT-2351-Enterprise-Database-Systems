-- ********************************************************************
-- Assignment4No4 IT2351 - Jennifer Howard
-- Return 3 columns from Orders Table plus 2 "tabulated" alias columns
-- ********************************************************************
use jenns_guitar_shop;
select order_id, order_date, ship_date
where month(order_date) = 3 and year(order_date) = 2018
date_add(order_date, interval 2 day) as approx_ship_date
ship_date - order_date as days_to_ship
from orders
order by order_id, order_date, ship_date if not null, approx_ship_date, days_to_ship;





