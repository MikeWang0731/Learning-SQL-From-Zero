use sql_store;

# 查找customer中的指定列
select first_name, last_name, points
from customers;

# 在上述操作的基础上，额外计算 points+10 并将结果输出为单独的一列
# 四则运算
select first_name, last_name, points, points + 10
from customers;

# 将 points+10 列的名字叫做new_points
select first_name,
       last_name,
       points,
       points + 10 as new_points
from customers;

# 输出用户所在的所有州的缩写，不包含重复的
select distinct state
from customers;

# Exercise
select name, unit_price, (unit_price * 1.1) as new_price
from products;