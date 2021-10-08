# Write your MySQL query statement below
# WITH RECURSIVE CTE
# AS
# (
# SELECT product_id, period_start, period_end, average_daily_sales AS val FROM Sales
# UNION
# SELECT product_id, DATE_ADD(period_start, INTERVAL + 1 DAY) AS period_start, period_end, val FROM CTE WHERE   DATE_ADD(period_start, INTERVAL + 1 DAY) <=  period_end
# )

# SELECT 
# c.product_id, product_name, concat(YEAR(period_start), '') report_year, SUM(val) AS total_amount
# FROM CTE c
# LEFT JOIN Product p ON (c.product_id = p.product_id)
# GROUP BY product_id, YEAR(period_start)
# ORDER BY 1, YEAR(period_start)


with RECURSIVE cte as(
    select product_id, period_start, period_end, average_daily_sales as val from Sales
    union
    select product_id, date_add(period_start, interval +1 day) as period_start, period_end, val
    from cte
    where date_add(period_start, interval +1 day) <= period_end

)

select cte.product_id, p.product_name, concat(year(period_start), '') as report_year,
    sum(val) as total_amount
from cte left join Product p
on cte.product_id = p.product_id
group by cte.product_id, year(period_start)
order by 1, 3