# Write your MySQL query statement below
SELECT DISTINCT a.seat_id
FROM cinema a JOIN cinema b
WHERE abs(a.seat_id - b.seat_id) = 1 
AND a.free = 1 and b.free = 1
ORDER BY 1 ASC