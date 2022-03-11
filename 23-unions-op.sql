use sql_store;

# 将今年发生的订单都标记为active
select order_id, order_date, 'active' as status
from orders
where order_date > '2019-01-01';

# 将之前发生的订单都标记为archived
select order_id, order_date, 'archived' as status
from orders
where order_date < '2019-01-01';

# 那么如何将这上述两个结果组合起来输出？即输出所有订单的标记 - Union关键字
# Union可以组合多个输出，不论是不是来自一张表
select order_id, order_date, 'active' as status
from orders
where order_date > '2019-01-01'
union
select order_id, order_date, 'archived' as status
from orders
where order_date < '2019-01-01';

# Exercise
# 输出customer_id, first_name, points, 以及用户的星级
# < 2000 - 铜牌级别，2000~3000 - 银牌级别，> 3000 - 金牌级别
select customer_id, first_name, points, 'Bronze' as type
from customers
where points <= 2000
union
select customer_id, first_name, points, 'Silver' as type
from customers
where points > 2000
  and points < 3000  # 可以用between关键字
union
select customer_id, first_name, points, 'Gold' as type
from customers
where points > 3000
order by first_name;


