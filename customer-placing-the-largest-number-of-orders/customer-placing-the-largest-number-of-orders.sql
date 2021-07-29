# Write your MySQL query statement below
# SELECT customer_number 
# FROM Orders
# GROUP BY customer_number
# ORDER BY count(*) DESC
# LIMIT 1



select customer_number
from Orders
group by customer_number
order by count(order_number) desc
limit 1
