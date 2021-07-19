# Write your MySQL query statement below
SELECT player_id, device_id FROM(
    SELECT player_id ,device_id , rank() over (PARTITION BY player_id 
                                                ORDER BY event_date) rnk
    FROM Activity) A
WHERE rnk = 1
 

