# Write your MySQL query statement below
select sale_date,
    sum(case
            when fruit = 'oranges' then -sold_num
            when fruit = 'apples' then sold_num end) as diff
from Sales 
group by sale_date