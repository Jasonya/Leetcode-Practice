# Write your MySQL query statement below
select followee as follower,
    count(distinct follower) as num
from follow
group by 1
having followee in (select follower from follow)
order by 1 asc