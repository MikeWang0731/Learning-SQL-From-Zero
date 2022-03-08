use sql_store;

# 找到住在VA或GA或FL的
select *
from customers
where state = 'VA'
   or state = 'GA'
   or state = 'FL';

# 上述等同：
select *
from customers
where state in ('VA', 'FL', 'GA');

# 同理，我们可以找到不住在VA或GA或FL的
select *
from customers
where state not in ('VA', 'FL', 'GA');

# Exercise
select *
from products
where quantity_in_stock in (49, 38, 72);

# 找到积分在1000到3000的用户
select *
from customers
where points >= 1000
  and points <= 3000;

# 上述等同
select *
from customers
where points between 1000 and 3000;

# Exercise
select *
from customers
where birth_date between '1990-01-01' and '2000-01-01';
