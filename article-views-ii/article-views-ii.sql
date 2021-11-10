# Write your MySQL query statement below
select distinct viewer_id as id
from Views
group by view_date, 1
having count(distinct article_id) > 1
order by 1


 