# Write your MySQL query statement below
select u.name, 
    ifnull(sum(distance), 0) as "travelled_distance"
from Users u left join Rides r
on u.id = r.user_id
group by 1
order by 2 desc, 1 asc