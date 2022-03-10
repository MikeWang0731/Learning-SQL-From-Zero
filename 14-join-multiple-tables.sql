use sql_store;

# 组合多张表到同一个输出
# 首先组合orders和customer，条件是 满足orders.customer_id和customer.customer_id的值一样 的数据
# 其次组合 满足orders.status和order_status.order_status_id的值一样 的那些数据
select *
from orders o
         join customers c on o.customer_id = c.customer_id
         join order_statuses os on o.status = os.order_status_id;

# 优化输出
select o.order_id, o.order_date, c.first_name, c.last_name, os.name as status
from orders o
         join customers c on o.customer_id = c.customer_id
         join order_statuses os on o.status = os.order_status_id;

# Exercise
# 组合sql_invoicing中的client, payments, payment_methods三张表，输出如下信息
# 客户名称、日期、金额、支付方式(文字形式，非序号)
use sql_invoicing;

select c.name, p.date, p.amount, m.name
from clients c
         join payments p on c.client_id = p.client_id
         join payment_methods m on p.payment_method = m.payment_method_id;


