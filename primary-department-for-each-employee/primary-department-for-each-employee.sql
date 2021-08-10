# Write your MySQL query statement below
# (select employee_id, department_id
# from employee
# group by employee_id
# having count(employee_id) = 1
# ) union (
# select employee_id, department_id
# from employee
# where primary_flag = 'Y')
# order by employee_id

(select employee_id, department_id
from Employee
group by 1
having count(*) = 1) union (
select employee_id, department_id
from Employee
where primary_flag = 'Y')
order by employee_id