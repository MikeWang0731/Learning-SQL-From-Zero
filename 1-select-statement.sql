use sql_store;

# 查找customer表中的所有信息
# select <column> from <table>
select *
from customers;

# 从customer表中的所有信息中找到customer_id是1的那个人
select *
from customers
where customer_id = 1;

# 将customer表中的所有信息按照first_name排序
select *
from customers
order by first_name;  # order by 默认升序 (A->Z)
