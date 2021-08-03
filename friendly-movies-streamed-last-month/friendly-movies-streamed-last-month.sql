# Write your MySQL query statement below
select distinct c.title
from Content c left join TVProgram t
on c.content_id = t.content_id
where c.Kids_content = 'Y' and c.content_type = 'Movies' 
and date_format(t.program_date, '%Y-%m') = '2020-06'