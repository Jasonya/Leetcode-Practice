# Write your MySQL query statement below
select distinct account_id
from
(select account_id, ip_address, 
    lead(ip_address, 1) over (partition by account_id order by login asc) as next_ip,
    logout,
    lead(login,1) over(partition by account_id order by login) as next_in
from LogInfo) a
where logout>=next_in and ip_address != next_ip