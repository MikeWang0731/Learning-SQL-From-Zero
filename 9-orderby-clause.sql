use sql_store;

# 因为customer_id是主键，所以我们默认以它为标准进行排序
# 这里我们使用first name进行排序
select *
from customers
order by first_name;

# 降序排序
select *
from customers
order by first_name desc;

# 双参数排序
# 首先以state进行排序，在state的基础上按照first name排序
select *
from customers
order by state, first_name;

# 按生日降序排列，只输出名字
select first_name, last_name, 10 as points
from customers
order by first_name, last_name;

# Exercise
# select all order with id=2, and sort them by their total price in descending order
select *
from order_items
where order_id = 2
order by (unit_price * quantity) desc ;


