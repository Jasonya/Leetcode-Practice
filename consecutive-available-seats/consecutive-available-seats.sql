# Write your MySQL query statement below
# SELECT DISTINCT a.seat_id
# FROM cinema a JOIN cinema b
# WHERE abs(a.seat_id - b.seat_id) = 1 
# AND a.free = 1 and b.free = 1
# ORDER BY 1 ASC

select distinct c1.seat_id
from cinema c1 join cinema c2
where abs(c1.seat_id - c2.seat_id) = 1
and c1.free = 1 and c2.free = 1
order by seat_id