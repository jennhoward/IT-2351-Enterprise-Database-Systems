-- **************************************************************************
-- Assignment4No5 IT2351 - Jennifer Howard
-- Using Analytic Functions return data from categories and products tables
-- **************************************************************************
use jenns_guitar_shop;
select category_name, product_name from categories 
join products on (category_id) join (order_items) on (product_id)
-- name of the product with the higest/lowest sales
first_value(product_id) over 
(partition by product_id order by total_sales desc) as highest_value,
last_value(product_id) over 
(partition by product_id order by total_sales desc) as lowest_value,
-- range between unbounded preceding and unbounded following) as lowest_sales,
group by sum(item_price) as total_sales
order by category_name, product_name, total_sales, highest_sales, lowest_sales;