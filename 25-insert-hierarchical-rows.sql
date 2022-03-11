use sql_store;

# 向多张表添加数据
# 首先我们添加一条新的订单记录
insert into orders (customer_id, order_date, status)
values (1, '2019-01-02', 1);

# 其次我们向订单内容中也添加一条相应的记录，用于记载上述订单的物品内容
# 那么我们如何知道上述订单的order_id是多少？每次都去现查也不现实
# last_insert_id() -> 返回最后一次插入id的值
insert into order_items
values (last_insert_id(), 1, 1, 2.95),
       (last_insert_id(), 2, 1, 3.95);
