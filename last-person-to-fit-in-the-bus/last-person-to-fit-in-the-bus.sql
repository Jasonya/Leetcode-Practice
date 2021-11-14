# Write your MySQL query statement below
with cte as(
select *,
    sum(weight) over(order by turn asc) as cum
from Queue
)


select person_name
from cte
where cum <= 1000
order by cum desc
limit 1
