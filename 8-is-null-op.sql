use sql_store;

# 查找phone是空的用户的信息
select *
from customers
where phone is null;

# 反之
select *
from customers
where phone is not null ;

# Exercise
# Get the orders that are not shipped
select *
from orders
where shipped_date is null;