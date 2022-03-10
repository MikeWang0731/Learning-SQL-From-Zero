use sql_store;

select c.first_name as customer, p.name as product
from customers c
         cross join products p
order by c.first_name;

# cross就是所有可能性的展现 permutation
# 例如A:123 B:123 -> 11 12 13 21 22 23 31 32 33

# Exercise

# implicit
select s.name as shipper, p.name as product
from products p,
     shippers s
order by s.name;

# explicit
select s.name as shipper, p.name as product
from shippers s
cross join products p
order by s.name;

