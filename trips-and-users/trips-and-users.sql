# Write your MySQL query statement below
select t.Request_at as Day,
    round(sum(case when t.Status<>'completed' then 1 else 0 end)/count(*), 2) as 'Cancellation Rate'
from Trips t left join Users u1 on t.Client_Id = u1.Users_Id
left join Users u2 on t.Driver_Id = u2.Users_id
where t.Request_at between '2013-10-01' and '2013-10-03'
and u1.Banned='No' and u2.Banned='No'
group by 1

