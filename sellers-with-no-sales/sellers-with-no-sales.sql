# Write your MySQL query statement below
select seller_name
from Seller
where seller_id not in (
    select s.seller_id
    from Seller s left join Orders o
    on s.seller_id = o.seller_id
    where year(sale_date) = '2020'
)
order by 1
