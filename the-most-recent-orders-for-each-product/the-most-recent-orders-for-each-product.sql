# Write your MySQL query statement below
with sub as (
    select order_id, order_date, product_id, 
        rank() over(partition by product_id order by order_date desc) as rnk
    from Orders
)


select p.product_name, sub.product_id, sub.order_id, sub.order_date
from sub left join Products p on sub.product_id = p.product_id
where rnk = 1
order by 1,2,3 
