# Write your MySQL query statement below

with sub2 as(
select sub.account_id,month
from(
    select account_id, sum(amount) as total, month(day) as month
    from Transactions
    where type = 'Creditor'
    group by month(day), account_id
    ) sub join Accounts a on sub.account_id = a.account_id
    where total>max_income
)

select distinct s2.account_id
from sub2 s2 join sub2 s3 on s2.account_id = s3.account_id and s2.month = s3.month-1