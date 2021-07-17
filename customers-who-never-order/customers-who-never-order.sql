# Write your MySQL query statement below
SElECT Name AS "Customers"
FROM Customers
WHERE Id NOT IN (
    SELECT CustomerId
    FROM Orders)