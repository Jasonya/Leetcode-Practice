# Write your MySQL query statement below
select transaction_id
from(
select transaction_id,
    rank() over(partition by left(day, 10) order by amount desc) as rnk
from Transactions) sub
where rnk=1
order by 1



