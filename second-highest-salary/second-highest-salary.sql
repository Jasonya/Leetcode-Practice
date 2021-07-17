# Write your MySQL query statement below

# method 1
# SELECT DISTINCT Salary AS SecondHighestSalary
# FROM Employee
# ORDER BY 1 DESC
# LIMIT 1 OFFSET 1

# method 2
# SELECT
#     (SELECT DISTINCT Salary
#         FROM Employee
#         ORDER BY 1 DESC
#         LIMIT 1 OFFSET 1) AS SecondHighestSalary;
        
# method 3
SELECT
    IFNULL(
        (SELECT DISTINCT Salary
        FROM EMployee
        ORDER BY 1 DESC
        LIMIT 1 OFFSET 1),
        NULL) AS SecondHighestSalary