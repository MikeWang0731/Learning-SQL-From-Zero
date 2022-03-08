use sql_store;

# 从customer中找到points大于3000的用户的所有信息
# 比较符号：> >= < <= = !=
select *
from customers
where points > 3000;

# 找到省份是VA的用户的信息
select *
from customers
where state = 'VA';

# 找到1990-1-1之后出生的用户的信息 (只输出他们的名字和生日)
select first_name, last_name, birth_date
from customers
where birth_date > '1990-01-01';

# Exercise
select *
from orders
where order_date >= '2019-01-01';

