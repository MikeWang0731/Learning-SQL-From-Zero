use sql_store;

# Recall Join (Inner Join)
select c.customer_id, c.first_name, c.last_name, o.order_id
from customers c
         join orders o on c.customer_id = o.customer_id
order by c.customer_id;

# 这里我们发现，普通的join，也就是inner join只能输出那些已经下过单的顾客的信息，并不是全部顾客的
# 我们想要输出全部顾客的信息

# 这里join和outer join的区别就是，join是取两张表的交集，outer join是两张表的并集
# outer join分为left join和right join
# 区别就是，如果是left的话，无论join条件是否成立，left位置的表都会全部输出，反之则right
select *
from customers c
         left join orders o on c.customer_id = o.customer_id
order by c.customer_id;


select *
from customers c
         right join orders o on c.customer_id = o.customer_id
order by c.customer_id;

# 打印全部顾客的信息
select c.customer_id, c.first_name, c.last_name, o.order_id
from customers c
         left join orders o on c.customer_id = o.customer_id
order by c.customer_id;

# Exercise
select p.product_id, p.name, i.quantity
from products p
         right join order_items i on p.product_id = i.product_id
order by p.product_id;



