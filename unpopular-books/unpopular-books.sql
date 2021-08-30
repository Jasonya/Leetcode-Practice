# Write your MySQL query statement below
select distinct B.book_id, B.name 
from Books B left join Orders o
on B.book_id = o.book_id
where datediff('2019-06-23', B.available_from) > 31
group by B.book_id
having sum(case when dispatch_date >= date_sub('2019-06-23', interval 1 year) then quantity else 0 end) < 10
