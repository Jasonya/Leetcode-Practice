# Write your MySQL query statement below
select name, sum(amount) as balance
from Transactions t left join Users u 
on t.account = u.account
group by t.account
having sum(amount) >= 10000
