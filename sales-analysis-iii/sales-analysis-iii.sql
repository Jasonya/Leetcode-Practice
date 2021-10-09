# Write your MySQL query statement below
select s.product_id, p.product_name
from Sales s left join Product p
on s.product_id = p.product_id
group by product_id
having max(sale_date) <= '2019-03-31' and min(sale_date) >= '2019-01-01'
