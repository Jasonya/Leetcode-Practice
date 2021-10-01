# Write your MySQL query statement below
select player_id, device_id
from(
    select player_id, device_id, 
        dense_rank() over(partition by player_id order by event_date asc) as rnk
    from Activity
)sub
where rnk=1

    
