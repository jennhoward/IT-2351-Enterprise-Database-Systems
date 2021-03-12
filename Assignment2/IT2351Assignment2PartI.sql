-- ********************************************
-- IT2351 Assignment 2 Part 2I - Jenn Howard
-- update unit price by 10% for all
-- items with a unit_price > 17 ********************************************
use om;
update items
set unit_price = 
unit_price * 1.10
where unit_price > 17;




