# Write your MySQL query statement below
with RECURSIVE t as(
    select v.user_id, v.visit_date, count(t.transaction_date) as transaction_count
    from Visits v left join Transactions t
    on v.user_id = t.user_id and v.visit_date = t.transaction_date
    group by 1,2
),
count_table as(
    select transaction_count, count(t.user_id) as visit_count
    from t
    group by 1),
cte as(
    select 0 as transactions_count
    union all
    select transactions_count+1 as transactions_count
    from cte
    where transactions_count < (select max(transaction_count) from t)
)

select cte.transactions_count, coalesce(visit_count, 0) as visits_count
from cte left join count_table c
on cte.transactions_count = c.transaction_count







