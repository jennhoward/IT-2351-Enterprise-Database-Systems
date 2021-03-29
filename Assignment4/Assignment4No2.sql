-- *****************************************************
-- Assignment4No2 IT2351 - Jennifer Howard
-- Parce email_address and list all sections seperately
-- *****************************************************
use jenns_guitar_shop;
select email_address
-- when I add a comma to eol, the select stament is invalid
-- but "(" below is expecting EOF, ';'
char_length(email_address) as "Length",
locate('@', email_address) as '@',
substring(email_address, 1, locate('@', email_address) - 1) as "Username",
substring(email_address, locate('@', email_address) + 1) as "Domain",
from customers
order by email_address, Length, @, Username, Domain;