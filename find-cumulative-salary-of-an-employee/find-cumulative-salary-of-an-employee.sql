# Write your MySQL query statement below
select a.id as Id, a.month,
    coalesce(a.salary, 0) + coalesce(b.salary, 0) + coalesce(c.salary, 0) as salary
from Employee a left join Employee b
on a.Id = b.Id and a.month = b.month+1
left join Employee c
on b.Id = c.id and b.month = c.month+1
where (a.id, a.month) not in (
    select id, max(month) from Employee
    group by id)
order by 1, 2 desc