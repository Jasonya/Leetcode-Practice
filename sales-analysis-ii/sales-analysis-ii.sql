# Write your MySQL query statement below
select distinct buyer_id 
from Sales s left join Product p
on s.product_id = p.product_id
where p.product_name = 'S8'
and s.buyer_id not in (
    select buyer_id
    from Sales s left join Product p
    on s.product_id = p.product_id
    where p.product_name = 'IPhone'

        )



