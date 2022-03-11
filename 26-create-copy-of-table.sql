use sql_store;

# 创建一个新表，数据来自于orders中的所有内容
create table orders_archived as
select *
from orders;

# Recall：如何选择2019-01-01前的订单并打印
select *
from orders
where order_date < '2019-01-01';

# 使用子查询的方式
insert into orders_archived
select *
from orders
where order_date < '2019-01-01';

# Exercise
# In the invoice table, put the record in the new table invoice_archived
# replace client_id with their name, only copy the invoice that have payment

use sql_invoicing;
# Step 1: replace client_id with their name and give the output
select i.invoice_id, c.name as name, i.client_id, i.payment_total
from invoices i
         join clients c on i.client_id = c.client_id;

# Step 2: select the invoice that have payment
select *
from invoices
where payment_total > 0;

# Answer:
create table invoice_archived as
select i.invoice_id,
       i.number,
       c.name,
       i.invoice_total,
       i.payment_total,
       i.invoice_date,
       i.due_date,
       i.payment_date
from invoices i
         join clients c on i.client_id = c.client_id
         where payment_date is not null ;
# 最后筛选payment>0时不需要再join step 2的代码了
# 我们可以这样理解：当上述代码执行完join clients c这一行的时候，就已经是一个完整的表格了，但是没有排除payment是0的
# 我们只需要像筛选数据那样使用where把需要的数据筛选出来就可以了







