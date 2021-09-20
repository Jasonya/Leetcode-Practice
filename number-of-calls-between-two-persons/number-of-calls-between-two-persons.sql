# Write your MySQL query statement below
select from_id as person1, to_id as person2, count(*) as call_count,
    sum(duration) as total_duration
from 
(select *
from Calls
union all select to_id, from_id, duration from Calls) sub
where to_id > from_id
group by 1, 2
