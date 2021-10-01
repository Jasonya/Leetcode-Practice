# Write your MySQL query statement below
WITH wanted AS (
SELECT * FROM Stadium where people >= 100
)

select
a.*
FROM
wanted a LEFT JOIN wanted m1 ON a.id-1=m1.id
LEFT JOIN wanted m2 ON a.id-2=m2.id
LEFT JOIN wanted p1 ON a.id+1 = p1.id
LEFT JOIN wanted p2 ON a.id+2 = p2.id
WHERE
(m1.id IS NOT NULL AND m2.id IS NOT NULL) OR (m1.id IS NOT NULL AND p1.id IS NOT NULL) OR (p1.id IS NOT NULL AND p2.id IS NOT NULL)







