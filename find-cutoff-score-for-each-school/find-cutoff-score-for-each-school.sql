# Write your MySQL query statement below
select s.school_id, min(ifnull(e.score, -1)) as score
from Schools s
left join Exam e
on s.capacity >= e.student_count
group by 1