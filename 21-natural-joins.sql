use sql_store;

# 当使用natural join的时候，不需要手动说明公共列，sql会自己查看这两张表中的公共列
select o.order_id, c.first_name, o.order_date
from orders o
         natural join customers c ;
