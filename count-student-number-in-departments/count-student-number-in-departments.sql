# Write your MySQL query statement below
select dept_name, count(s.dept_id) as student_number
from department d left join student s
on d.dept_id = s.dept_id
group by dept_name
order by 2 desc