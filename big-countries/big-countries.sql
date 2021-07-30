# Write your MySQL query statement below
# SELECT name, population, area
# FROM World
# WHERE area > 3000000 or population > 25000000

# can use union

select name, population, area
from World
where population > 25000000 or area > 3000000