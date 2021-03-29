-- ****************************************
-- Assignment4No1 IT2351 - Jennifer Howard
-- Write 3 select statments to retrieve  the
-- specified data in the specfied formats
-- ****************************************
use jenns_guitar_shop;
select list_price,
format(list_price,1) as formatted,
convert(list_price, signed) as converted,
cast(list_price as signed) as casted
from products
order by list_price, formatted, converted, casted;

