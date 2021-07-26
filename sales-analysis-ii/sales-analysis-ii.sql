# Write your MySQL query statement below
SELECT DISTINCT s.buyer_id
FROM Sales s LEFT JOIN Product p
ON s.product_id = p.product_id
WHERE product_name = 'S8' 
AND s.buyer_id not in (
    SELECT buyer_id from Sales s JOIN Product P
    ON s.product_id = p.product_id
    WHERE product_name = 'Iphone')
