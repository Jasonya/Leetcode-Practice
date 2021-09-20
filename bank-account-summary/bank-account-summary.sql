# Write your MySQL query statement below
with sub as (
    select u.user_id, u.user_name, ifnull(credit+sum(amount), u.credit) as credit
    from Users u left join Transactions t
    on u.user_id = t.paid_to
    group by user_id
)


select user_id, user_name, 
    ifnull(credit-sum(amount), sub.credit) as credit,
    if((credit-sum(amount)<0), 'Yes', 'No') as credit_limit_breached
from sub left join Transactions t1
on sub.user_id = t1.paid_by
group by user_id
