# Write your MySQL query statement below
select s.student_id, s.student_name, Subjects.subject_name,
    count(e.student_id) as attended_exams
from Students s join Subjects left join Examinations e
on s.student_id = e.student_id and Subjects.subject_name = e.subject_name
group by 1,2,3
order by 1,3
