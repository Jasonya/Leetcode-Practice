# Write your MySQL query statement below
select distinct title
from TVProgram t left join Content c
on t.content_id = c.content_id
where date_format(program_date, '%Y-%m') = '2020-06'
and Kids_content = 'Y' and content_type ='Movies'
