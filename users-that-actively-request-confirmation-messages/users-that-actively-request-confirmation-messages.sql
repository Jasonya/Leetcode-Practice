# Write your MySQL query statement below
select distinct (user_id) from(
    select c1.user_id,
        timestampdiff(second, c1.time_stamp, c2.time_stamp) as time_diff
    from Confirmations c1 join Confirmations c2
    on c1.user_id = c2.user_id and c2.time_stamp>c1.time_stamp) b
where time_diff <= 86400

