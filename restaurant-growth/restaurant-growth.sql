# Write your MySQL query statement below
select c1.visited_on, sum(c2.daysum) as amount, round(avg(c2.daysum),2) as average_amount 
from (select visited_on, sum(amount) as daysum from Customer group by visited_on) c1,
      (select visited_on, sum(amount) as daysum from Customer group by visited_on)c2
where datediff(c1.visited_on, c2.visited_on) between 0 and 6
group by c1.visited_on
having count(c2.visited_on) = 7

