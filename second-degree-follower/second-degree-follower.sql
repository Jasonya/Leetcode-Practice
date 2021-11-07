# Write your MySQL query statement below
select followee as follower,
    count(distinct follower) as num
from Follow
group by 1
having followee in (select follower from Follow)
order by 1 asc