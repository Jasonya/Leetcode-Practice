# Write your MySQL query statement below
# SELECT class
# FROM courses
# # stduent name may dupliacte
# GROUP BY class HAVING count(DISTINCT student) >= 5



select class
from courses
group by class
having count(distinct student) >= 5