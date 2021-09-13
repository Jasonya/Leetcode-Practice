# Write your MySQL query statement below
# select min(log_id) as start_id, max(log_id) as end_id
# from Logs
# group by log_id - num


# SELECT min(log_id) as start_id, max(log_id) as end_id
# FROM
# (SELECT log_id, ROW_NUMBER() OVER(ORDER BY log_id) as num
# FROM Logs) a
# GROUP BY log_id - num

select min(log_id) as start_id, max(log_id) as end_id from(
select log_id, row_number() over(order by log_id) as num from logs
    
) sub
group by log_id - num