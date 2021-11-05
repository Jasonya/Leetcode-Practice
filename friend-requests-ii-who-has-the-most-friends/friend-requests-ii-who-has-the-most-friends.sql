# Write your MySQL query statement below
with record as (
    select requester_id, accepter_id from RequestAccepted
    union 
    select accepter_id, requester_id from RequestAccepted
)


select requester_id as id,
    count(requester_id) as num
from record
group by 1
order by 2 desc
limit 1