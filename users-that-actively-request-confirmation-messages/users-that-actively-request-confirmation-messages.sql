# Write your MySQL query statement below
select distinct t.user_id from(
select a.user_id,
timestampdiff(second, b.time_stamp, a.time_stamp) as t from confirmations a
join confirmations b 
where a.user_id = b.user_id and a.time_stamp > b.time_stamp) t
where t.t <= 86400
order by 1