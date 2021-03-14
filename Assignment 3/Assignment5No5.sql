-- ******************************************************
-- Assignment5No5 IT2351 Jenn Howard
-- list all categories without duplicates using where in
-- ******************************************************
use jenns_guitar_shop;
select category_name from categories
where category_name in categories
order by category_name;





