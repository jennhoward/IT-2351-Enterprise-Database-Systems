-- ***************************************************
-- Assignment3No3 IT2351 Jenn Howard
-- from jenns_guitar_shop
-- return one row for each category that has products
-- ***************************************************
use jenns_guitar_shop;
select category_name, quantity from categories
join products using (category_id)
join order_items using (product_id)
count(product_id) as number_of_products
max(item_price) as most_expensive_product
order by quantity desc;












