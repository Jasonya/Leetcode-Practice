# Write your MySQL query statement below
SELECT Employee.Name, Bonus.bonus
FROM Employee LEFT JOIN Bonus 
ON Employee.empId = Bonus.empId
WHERE Bonus.bonus < 1000 or Bonus.bonus IS NULL