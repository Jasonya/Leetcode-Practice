# Write your MySQL query statement below
select session_id 
from Playback
where session_id not in(
    select p.session_id
    from Playback p left join Ads a
    on p.customer_id = a.customer_id
    where a.timestamp >= p.start_time and a.timestamp <= p.end_time) 
