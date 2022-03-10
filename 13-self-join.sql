use sql_hr;

# 自链接：找到给同一个组长报告的那些员工 e.reports_to(员工:n) -> m.employee_id(组长:1)
select *
from employees e
         join employees m on e.reports_to = m.employee_id;

# 优化输出
select e.employee_id, e.first_name, m.first_name as manager
from employees e
         join employees m on e.reports_to = m.employee_id;

# on xxx 到底是什么意思：on e.reports_to = m.employee_id
# 就是说符合 reports_to的数值和employee_id的数值相同的 条件的条目都会被选择
# 又或者说是excel中v-lookup的公共列选择
