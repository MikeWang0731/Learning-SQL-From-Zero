use sql_hr;

# Recall normal self join
select e.first_name, e.last_name, m.first_name as supervisor
from employees e
         join employees m on e.reports_to = m.employee_id;
# 这里有个问题，我们没有办法在结果中体现manager这个人的信息，但manager也算是公司的一名员工
# 为什么会有上述问题？因为这里的条件是'on e.reports_to = m.employee_id;'，即那些有manager的员工

# 这里使用left join就可以打印全部员工的名字
select e.first_name, e.last_name, m.first_name as supervisor
from employees e
         left join employees m on e.reports_to = m.employee_id;
