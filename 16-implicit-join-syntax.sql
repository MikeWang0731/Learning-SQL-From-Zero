use sql_store;

# Explicit Join - 精确的Join操作
select *
from orders o
         join customers c on o.customer_id = c.customer_id;

# Implicit Join - 模糊的Join操作(不推荐使用！！！)
select *
from orders o,
     customers c
where o.customer_id = c.customer_id;
