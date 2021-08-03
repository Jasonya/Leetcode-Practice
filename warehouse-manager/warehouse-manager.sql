# Write your MySQL query statement below
select w.name as "warehouse_name", sum(p.Width * p.Length * p.Height * w.units) as "volume"
from Warehouse w left join products p
on w.product_id = p.product_id
group by 1

