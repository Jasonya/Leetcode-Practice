# Write your MySQL query statement below
with sub as (
select contest_id, gold_medal as user_medal from Contests
union all 
select contest_id, silver_medal as user_medal from Contests
union all
select contest_id, bronze_medal as user_medal from Contests
), idx as(
select distinct s1.user_medal
from sub s1 
left join sub s2 on s1.contest_id = s2.contest_id -1
left join sub s3 on s1.contest_id = s3.contest_id -2
where s1.user_medal = s2.user_medal and s1.user_medal = s3.user_medal
    
union 
select gold_medal as user_medal
from Contests
group by gold_medal 
having count(gold_medal) >=3
)

select name, mail
from idx left join Users u
on idx.user_medal = u.user_id





