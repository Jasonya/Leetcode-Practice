# Write your MySQL query statement below
with cte as (
    select distinct * from Transactions where state='approved'
    union 
    select distinct c.trans_id as id, country, 'chargebacks' as state, amount, c.trans_date
    from Chargebacks c left join Transactions t
    on t.id = c.trans_id
)



select date_format(trans_date, '%Y-%m') as month, country,
    sum(case when state='approved' then 1 else 0 end) as approved_count,
    sum(case when state='approved' then amount else 0 end) as approved_amount,
    sum(case when state='chargebacks' then 1 else 0 end) as chargeback_count,
    sum(case when state='chargebacks' then amount else 0 end) as chargeback_amount
from cte
group by 1,2






