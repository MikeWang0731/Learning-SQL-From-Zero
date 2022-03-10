use sql_store;

# 对于有多个主键的表，我们也需要使用多个共同列来进行匹配
select *
from order_items i
         join order_item_notes n
              on i.order_id = n.order_Id and i.product_id = n.product_id;