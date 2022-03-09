use sql_store;

# 只返回前三条数据
# 如果limit后面的数字大于我们的数据量，那么就会返回所有的数据
select *
from customers
limit 3;

# 如果我们想跳过前6条，只输出第7-9条
select *
from customers
limit 6,3;  # limit <offset>,<entries>

# Exercise
# Get the top 3 loyal customers
select *
from customers
order by points desc  # 这里要降序排列，由高至低
limit 3;
