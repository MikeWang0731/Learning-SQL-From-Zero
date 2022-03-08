use sql_store;

# Pattern Matching
# 找到所有lastname以b为首的用户的信息
# b% - 以b开头的，不管b后面有还是没有东西
select *
from customers
where last_name like 'b%';

# 找到所有lastname中含有b的用户的信息
# %b% - b的前面和后面都有或者没有信息
select *
from customers
where last_name like '%b%';

# 找到所有lastname中以y结尾的用户的信息
select *
from customers
where last_name like '%y';

# 找到所有lastname中以y作为结尾且名字有6个字母的用户的信息
# _ - 类似于填空，一个空填一个字母
select *
from customers
where last_name like '_____y';

# 以b开头，y结尾，中间有四个字母
select *
from customers
where last_name like 'b____y';

# Exercise
select *
from customers
where address like '%trail%'
   or address like '%avenue%';

select *
from customers
where phone like '%9';