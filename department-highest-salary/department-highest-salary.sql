# Write your MySQL query statement below
select d.name as Department,
    sub.name as Employee,
    salary as Salary
from(
select name, salary, departmentID,
    rank() over(partition by departmentID order by salary desc) as rnk
from Employee ) sub left join Department d
on sub.departmentID = d.id
where rnk=1