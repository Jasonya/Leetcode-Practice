# Write your MySQL query statement below
select customer_id
from Product p left join Customer c
on p.product_key = c.product_key
group by 1
having count(distinct c.product_key) = (select count(distinct product_key) from Product)
             
