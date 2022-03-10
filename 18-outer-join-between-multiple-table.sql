use sql_store;

# 打印输出 所有用户 的基本订单信息和派送信息
select c.customer_id, c.first_name, o.order_date, s.shipper_id, s.name
from customers c
         left join orders o on c.customer_id = o.customer_id
         left join shippers s on o.shipper_id = s.shipper_id
order by c.customer_id;

# 因为是所有用户的订单信息，所以我们要选择customers和orders这两张表，又因为是所有用户，所以是left join
# 此外，我们还要打印派送信息，因为是要打印所有用户的订单信息，所以我们依然需要 customers left join shippers

# 重点是搞清楚表和表之间的匹配关系，是哪个表一定要"不论如何全部输出所有条目"

# Exercise
# 输出一张表包含如下列
# order_date, order_id, first_name, shipper, order_status
select o.order_date, o.order_id, c.first_name as customer, s.name as shipper, os.name as status
from orders o
         left join customers c on o.customer_id = c.customer_id
         left join shippers s on o.shipper_id = s.shipper_id
         left join order_statuses os on o.status = os.order_status_id
order by os.name;

# 在这个题中，无论如何都要全部输出的是订单，因为当某个订单在process状态时是不会分配shipper的，但是它也是一个成功的订单
# 所以所有其他的信息都要以order为主，即 orders left join xxx



