# Write your MySQL query statement below
select d.Name as Department,
    sub.Name as Employee,
    sub.Salary
from Department d left join (select *,
    dense_rank() over(partition by DepartmentId order by Salary desc) as rnk
from Employee) sub
on d.Id = sub.DepartmentId
where sub.rnk <=3