# Write your MySQL query statement below
select u.name, ifnull(sum(r.distance), 0) as travelled_distance
from Users u left join Rides r
on r.user_id = u.id
group by 1
order by 2 desc, 1 asc