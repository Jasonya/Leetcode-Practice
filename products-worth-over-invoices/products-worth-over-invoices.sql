# Write your MySQL query statement below
select name,
    ifnull(sum(rest), 0) as rest,
    ifnull(sum(paid),0) as paid,
    ifnull(sum(canceled),0) as canceled,
    ifnull(sum(refunded),0) as refunded
from Product p left join Invoice i
on i.product_id = p.product_id
group by 1
order by 1


