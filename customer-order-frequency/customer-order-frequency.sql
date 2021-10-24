# Write your MySQL query statement below
with cte as(
    select date_format(order_date, '%Y-%m') as t, customer_id,
        sum(quantity*price) as spend
    from Orders o left join Product p
    on o.product_id = p.product_id
    group by 1,2
)

select s.customer_id, name
from Customers s join(
    select *
    from cte 
    where t between '2020-06' and '2020-07' and spend >= 100
    group by customer_id having count(*) = 2) sub
on sub.customer_id = s.customer_id


