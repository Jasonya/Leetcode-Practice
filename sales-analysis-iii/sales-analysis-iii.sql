# Write your MySQL query statement below
SELECT DISTINCT(s.product_id), p.product_name
FROM Sales s LEFT JOIN Product P
ON s.product_id = p.product_id
WHERE s.product_id not in (SELECT
        product_id from Sales 
        where sale_date < '2019-01-01' OR sale_date > '2019-03-31')