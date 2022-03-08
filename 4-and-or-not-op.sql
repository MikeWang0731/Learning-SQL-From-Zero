use sql_store;

# Priority: AND > OR > NOT，但还是推荐用括号声明优先级，方便阅读
# 找到同时符合生日在1993年之后且积分大于100分的人
select *
from customers
where birth_date > '1993-01-01'
  and points > 100;

# 找到同时符合生日在1993年之后或积分大于100分的人
select *
from customers
where birth_date > '1993-01-01'
  or points > 100;

# 找到符合 1990年1月1日之后出生 或 积分大于300 且 住在VA 的用户的信息
select *
from customers
where birth_date > '1990-01-01'
   or (points > 300 and state = 'VA');

# 找到 不符合 1990年1月1日之后出生 或 积分大于1000 的用户信息
select *
from customers
where not (birth_date > '1990-01-01'
    or points > 1000);

# 上述等于如下代码
# 因为not会对括号中的每个逻辑元素进行作用
select *
from customers
where birth_date <= '1990-01-01'
  and points <= 1000;

# Exercise
# From the order_items table, find the items in order #6 where the total price greater than 30
select *
from order_items
where order_id = 6
  and (unit_price * quantity > 30);



