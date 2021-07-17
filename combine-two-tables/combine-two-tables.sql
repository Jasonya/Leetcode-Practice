# Write your MySQL query statement below
SELECT P.FirstName,
    P.LastName,
    ad.City,
    ad.State
FROM Person AS P
LEFT JOIN Address AS ad
ON P.PersonId = ad.PersonId;