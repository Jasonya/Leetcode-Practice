# Write your MySQL query statement below
SELECT min(abs(a.x-b.x)) AS "shortest"
FROM point a JOIN point b
WHERE a.x != b.x