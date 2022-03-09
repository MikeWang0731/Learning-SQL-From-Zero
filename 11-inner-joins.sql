use sql_store;

# 我们告诉SQL，你要将orders表和customers表进行一下组合
# 返回的结果中要确保orders表中的customer_id要和customers表中的customer_id相等
# 简单来说就是以orders.customer_id和customers.customer_id为基准(两张表的公共列)，进行表的重新组合
select order_id, first_name, last_name
from orders
         join customers on orders.customer_id = customers.customer_id;
# on中的两表顺序要和from和join声明表的顺序一样

# 如果我们想输出customer_id这一列，那么就需要额外声明是那个customer_id，因为有两个mysql分不出来
select order_id, customers.customer_id,first_name, last_name
from orders
         join customers on orders.customer_id = customers.customer_id;

# 使用alias对表进行简化
select order_id, o.customer_id, c.first_name, c.last_name
from orders o
         join customers c on o.customer_id = c.customer_id;

# Exercise
# 结合orders和order_items两张表，返回order id, product_id, quantity, unit price
select o.order_id, i.product_id, i.quantity, i.unit_price
from orders o
         join order_items i on o.order_id = i.order_id;



