# Write your MySQL query statement below
select requester_id as id, count(*) as num from( 
select requester_id 
from request_accepted
union all
select accepter_id as requester_id
from request_accepted) a
group by 1
order by 2 desc
limit 1