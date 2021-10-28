# Write your MySQL query statement below
with seq as(
    select *,
        sum(salary) over(partition by experience order by salary asc) as total
    from Candidates
), cte as(
    select *
    from seq
    where experience = 'Senior' and total <= 70000
)

select employee_id
from cte
union all
select employee_id
from seq
where experience = 'Junior' and total <= coalesce((select 70000 - max(total) from cte),70000)