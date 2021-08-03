# Write your MySQL query statement below

select trim(lower(product_name)) as "product_name", -- trim no space in string
    left(sale_date, 7) as "sale_date",
    count(1) as "total"
from Sales
group by 1, 2
order by 1, 2 asc