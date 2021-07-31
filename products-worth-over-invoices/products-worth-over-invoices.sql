# Write your MySQL query statement below
select p.name,
    ifnull(sum(rest), 0) as rest,
    ifnull(sum(paid), 0) as paid, 
    ifnull(sum(canceled), 0) as canceled,
    ifnull(sum(refunded), 0) as refunded
from Product p left join Invoice i
on p.product_id = i.product_id 
group by p.product_id
order by p.name