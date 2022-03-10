use sql_store;

# Recall join on multiple orders
# 输出那些有shipper信息的订单信息
select o.order_id, c.first_name, s.name
from orders o
         join customers c on o.customer_id = c.customer_id
         join shippers s on o.shipper_id = s.shipper_id;


# 使用using关键字对上述语句进行简写
select o.order_id, c.first_name, s.name
from orders o
         join customers c using (customer_id)
         join shippers s using (shipper_id);
# using (common_column_name) - 使用using关键字可以直接声明两张表共有的那个公共列，而不需要使用on语句进行较为复杂的声明
# 注意：当且仅当列名 完全一样 时才可以使用using，

# 当表有双主键时的情况
select *
from order_items i
         join order_item_notes n using (order_id, product_id);

# Exercise
# 打印输出如下列：date, client, amount, payment_method
use sql_invoicing;

select p.date, c.name, p.amount, m.name as payment_method
from payments p
         join clients c using (client_id)
         join payment_methods m on p.payment_method = m.payment_method_id;
# 因为payments和payment_methods中描述支付方式序号的列名不一样，所以不能用using

