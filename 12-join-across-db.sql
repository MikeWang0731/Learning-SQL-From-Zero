use sql_store;

# 组合sql_store中的order_items和sql_inventory中的products，公共列是product_id
# 为什么order_items不需要prefix，因为我们在最开始use sql_store了，所以，所有store下面的都不需要prefix
select *
from order_items i
         join sql_inventory.products p on i.product_id = p.product_id;
