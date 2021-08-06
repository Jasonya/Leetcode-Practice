# Write your MySQL query statement below
with nums as (
    SELECT id, num,
LEAD(num, 1) OVER (ORDER BY id) AS next_num,
LEAD(num, 2) OVER (ORDER BY id) AS next_next_num
FROM Logs)

select distinct num as ConsecutiveNums
from nums
where num = next_num and next_num  = next_next_num