# Write your MySQL query statement below

#algorithm
# SELECT a.Name as "Employee"
# FROM Employee AS a, Employee AS b
# WHERE a.ManagerId = b.Id AND a.Salary > b.Salary

# JOIN
SELECT a.Name as "Employee"
FROM Employee as a JOIN Employee as b
ON a.ManagerId = b.Id
WHERE a.Salary > b.Salary
