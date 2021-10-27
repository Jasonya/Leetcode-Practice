# Write your MySQL query statement below
with seq as(
    select *,
    row_number() over(partition by experience order by salary asc) as rnk,
    sum(salary) over(partition by experience order by salary asc) as total
    from Candidates
), cte as (
    select ifnull(experience, 'Senior') as experience, ifnull(max(rnk),0) as accepted_candidates,
        70000 - ifnull(max(total),0) as remain_total
    from seq
    where experience = 'Senior' and total <= 70000




)


select experience, accepted_candidates from cte
union all
select ifnull(experience, 'Junior') as experience, ifnull(max(rnk),0) as accepted_candidates
from seq
where experience = 'Junior' and total <= (select remain_total from cte)