# Write your MySQL query statement below
select d.Name as department,
    e.Name as Employee,
    e.Salary 
from Employee e join Department d
on e.DepartmentId = d.Id
where e.Salary = (select max(Salary)
                 from Employee es
                 where es.DepartmentId = e.DepartmentId
                 group by es.DepartmentId)