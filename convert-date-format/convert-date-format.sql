# Write your MySQL query statement below






select concat(dayname(day), ', ', monthname(day), ' ', dayofmonth(day), ', ',
            year(day)) as day
from Days