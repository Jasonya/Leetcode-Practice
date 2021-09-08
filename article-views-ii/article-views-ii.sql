# Write your MySQL query statement below
select distinct viewer_id as id from(
select viewer_id, view_date, count(distinct article_id) as cnt
from Views
group by 1,2) sub
where cnt>1
 