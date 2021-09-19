# Write your MySQL query statement below
select p1.id as p1, p2.id as p2, abs((p2.y_value-p1.y_value)*(p2.x_value-p1.x_value)) as area
from Points p1 join Points p2 on p1.x_value != p2.x_value and p1.y_value != p2.y_value and p2.id > p1.id
group by 1,2
order by area desc, 1, 2