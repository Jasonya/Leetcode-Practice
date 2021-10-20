# Write your MySQL query statement below
select e.employee_id, cnt as team_size
from Employee e left join(
    select team_id, count(team_id) as cnt
    from Employee
    group by 1) sub
on e.team_id = sub.team_id