# Write your MySQL query statement below
select dept_name,
    count(student_id) as student_number
from Department d left join Student s
on d.dept_id = s.dept_id
group by 1
order by 2 desc, 1 asc


