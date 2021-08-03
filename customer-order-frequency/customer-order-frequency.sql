# Write your MySQL query statement below
select sub.customer_id, c.name from(
select s.customer_id, left(s.order_date, 7) as "data",
    sum(s.quantity * p.price)
from Orders s left join Product p
on s.product_id = p.product_id
where date_format(s.order_date, '%Y-%m') between '2020-06' and '2020-07' 
group by 1, 2
having sum(s.quantity * p.price)>=100) sub
left join Customers c
on sub.customer_id = c.customer_id
group by sub.customer_id
having count(sub.customer_id) >= 2
