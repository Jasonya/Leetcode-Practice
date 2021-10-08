# Write your MySQL query statement below
with cte as(
    select exam_id, max(score) as max_score, min(score) as min_score
    from Exam
    group by exam_id
)

select sub.student_id, s.student_name
from(
    select cte.exam_id, e.student_id,
        case when e.score > cte.min_score and e.score < cte.max_score then 'quite' end as status
    from cte left join Exam e
    on cte.exam_id = e.exam_id) sub left join Student s
on sub.student_id = s.student_id
group by 1 having count(1) = count(sub.status)
order by 1