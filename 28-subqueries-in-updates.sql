use sql_invoicing;

update invoices
set payment_total = invoice_total * 0.5,
    payment_date  = due_date
where invoice_id = 3;

# 如果我们不知道他的id只知道名字怎么办？
# 使用子查询
update invoices
set payment_total = invoice_total * 0.5,
    payment_date  = due_date
where invoice_id = (select client_id
                    from clients
                    where name = 'Myworks');

# Exercise
# Update the comments for customer who have more than 3000 points, if they have orders
# comment is 'Gold Customer'
use sql_store;

update orders
set comments = 'Gold Customer'
where customer_id in (select customer_id from customers where points > 3000);
# 这里使用customer_id = xxx会报错，因为使用等号的情况下只能返回一条数据
# 多条数据需要使用关键词in
