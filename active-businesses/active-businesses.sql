# Write your MySQL query statement below
with r2 as(
    select business_id,
        case when occurences > avg(occurences) over(partition by event_type) then 1 else 0 end as higher_than_avg
    from Events
)


select business_id
from r2
group by 1
having sum(higher_than_avg) > 1