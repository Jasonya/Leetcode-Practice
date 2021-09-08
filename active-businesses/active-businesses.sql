# Write your MySQL query statement below
with r2 as(
select *,
    case when occurences > avg(occurences) over (partition by event_type) then 1 else 0 end as chosen from Events)
    
select business_id
from r2
group by business_id
having sum(chosen)>1