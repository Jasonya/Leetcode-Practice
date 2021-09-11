# Write your MySQL query statement below
select 
    date_format(trans_date, '%Y-%m') as month,
    country,
    sum(state='approved') as approved_count,
    sum(if(state='approved',amount, 0)) as approved_amount,
    sum(state='chargeback') as chargeback_count,
    sum(if(state='chargeback', amount, 0)) as chargeback_amount
    
from 
    (select distinct * from Transactions where state='approved'
    union all
    select distinct c.trans_id as id, t.country, 'chargeback' as state, t.amount, c.trans_date 
     from Chargebacks c left join Transactions t
     on c.trans_id = t.id) temp
group by 1, 2

