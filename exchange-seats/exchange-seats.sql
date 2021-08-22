# Write your MySQL query statement below
select 
    id,
    # shift student column down then up
    if(id%2=0, 
       lag(student, 1, student) over (order by id asc),  
       lag(student, 1, student) over (order by id desc)) as student
from seat
order by id asc







