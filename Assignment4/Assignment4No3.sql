-- ****************************************************************
-- Assignment4No3 IT2351 - Jennifer Howard
-- Return 2 columns from Products Table plus one calculated column
-- ****************************************************************
use jenns_guitar_shop;
select list_price, discount_percent from products
-- discount_percent / 100 = discount_percentage,
where discount_percent > 0 -- then discount_amount = round(list_price,2)
order by list_price, discount_percent, 
((list_price * (discount_percent/100)), 2) as discount_amount;
-- order by list_price, discount_percent, discount_amount;