use sql_invoicing;

# 将invoice_id=3的那一条数据的payment_total设置为invoice_total的一半，payment_date和due_date一样
update invoices
set payment_total = invoice_total * 0.5,
    payment_date = due_date
where invoice_id = 3;

# 同时更新invoice_id=3和4的两条数据
update invoices
set payment_total = invoice_total * 0.5,
    payment_date = due_date
where invoice_id = (3,4);

# Exercise
# give any customer who born before 1990 50 extra points
use sql_store;

update customers
set points = points + 50
where birth_date < '1990-01-01';


