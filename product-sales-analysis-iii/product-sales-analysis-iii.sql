# Write your MySQL query statement below
select product_id, year as first_year, quantity, price from(
select s.*, rank() over(partition by product_id order by year asc) as rnk
from Sales s left join Product p
on s.product_id = p.product_id) a
where rnk = 1
