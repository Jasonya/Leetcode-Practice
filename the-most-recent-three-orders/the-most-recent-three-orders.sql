# Write your MySQL query statement below
with sub as(
    select order_id, order_date, customer_id, 
        rank() over(partition by customer_id order by order_date desc) as rnk
    from Orders)
    
select c.name as customer_name, c.customer_id, order_id, order_date
from sub left join Customers c
on sub.customer_id = c.customer_id
where rnk <= 3
order by customer_name asc, customer_id asc, order_date desc