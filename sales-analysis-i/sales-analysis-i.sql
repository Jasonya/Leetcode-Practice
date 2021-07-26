# Write your MySQL query statement below

SELECT seller_id FROM(
    SELECT seller_id,
        rank() over(order by sum(price) DESC) as rnk
    FROM Sales
    GROUP BY 1) a
WHERE rnk = 1
    



# select project_id
# from (
# select project_id,
# rank() over(order by count(distinct employee_id) desc) as rnk
# from Project
# group by 1) a
# where rnk = 1