# Write your MySQL query statement below
select min(round(sqrt(pow(p1.x-p2.x, 2) + pow(p1.y-p2.y,2)),2)) as shortest
from Point2D p1 join Point2D p2
where (p1.x, p1.y) <> (p2.x, p2.y)



