# Write your MySQL query statement below
select e.employee_id, sub.ts as team_size
from Employee e left join (
select team_id,
    count(employee_id) as ts
from Employee 
group by team_id) sub
on e.team_id = sub.team_id