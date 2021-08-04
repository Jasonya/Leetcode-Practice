# Write your MySQL query statement below
select p.product_name,
    sum(o.unit) as "unit"
from Orders o left join Products p
on o.product_id = p.product_id
where date_format(o.order_date, '%Y-%m') = '2020-02'
group by 1 having sum(o.unit) >= 100