# Write your MySQL query statement below
select activity
from Friends
group by activity
having count(1) > (select count(activity) from Friends group by activity order by 1 limit 1)
and count(1) < (select count(activity) from Friends group by activity order by 1 desc limit 1)