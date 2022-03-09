use sql_store;

# 回忆like关键字和字符匹配
select *
from customers
where last_name like 'b%';

# 我们也可以用正则表达式
# ^ - the beginning of a string - '^field' 以field作为起始
# $ - the end of a string - 'field$' 以field作为结束
select *
from customers
where last_name regexp 'field';

# | - multiple search patterns
select *
from customers
where last_name regexp 'field|mac|rose';

# [] - a list of possible single letter - [gi]e 说明有可能是ge也有可能是ie
select *
from customers
where last_name regexp '[gim]e';

# - - a range of possible letter - [a-h]e 说明e的前面有可能是a到h的任意一个字母
select *
from customers
where last_name regexp '[a-h]e';

# Exercise
# first name are ELKA or AMBUR
select first_name, last_name, phone
from customers
where first_name regexp 'ELKA|AMBUR';

# last name end with EY or ON
select *
from customers
where last_name regexp 'EY$|ON$';

# last name start with MY or contains SE
select *
from customers
where last_name regexp '^MY|SE';

# last name contains B followed by R or U
select *
from customers
where last_name regexp 'B[RU]';