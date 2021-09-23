# Write your MySQL query statement below
select employee_id, name, salary,
    dense_rank() over(order by salary) as team_id
from (
    select employee_id, name, salary
    from (select *, count(salary) over(partition by salary) sal_num from Employees ) sub 
where sal_num >= 2
) sub1
order by team_id, employee_id 