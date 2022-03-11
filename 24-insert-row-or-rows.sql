use sql_store;

# Insert into 'tables' values (some_values)
# Case 1: 向全部列手动添加信息
insert into customers
values (default, 'John', 'Smith', '1990-01-01', null, 'address', 'city', 'CA', default);
# 第一个是default的原因首先是因为我们默认对每一列手动添加数据，所以必须要声明
# 其次是customer_id是auto_increment的primary key，会默认在有新数据是自增

# Case 2: 向指定列添加信息
insert into customers (first_name, last_name, birth_date, address, city, state)
values ('John', 'Smith', '1990-01-01', 'address', 'city', 'CA');
# 这里不需要在第一位声明default是因为我们直接使用了它的自递增特性，没有主动向他添加数据

# 一次添加多条
# 向shippers表添加多个承运商名称
insert into shippers (name)
values ('DHL'),
       ('Canada Post'),
       ('FedEx');

# Exercise
insert into products (name, quantity_in_stock, unit_price)
values ('Coca-Cola', 36, 2.5);


