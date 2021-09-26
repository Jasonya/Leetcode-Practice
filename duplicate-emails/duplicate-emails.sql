# Write your MySQL query statement below
# SELECT Email
# FROM Person
# GROUP BY Email
# Having count(Email) >1

#. SELF JOIN
# SELECT DISTINCT p1.Email
# FROM Person p1, Person p2
# WHERE p1.Email = p2.Email and p1.id != p2.id
# ;

select distinct p1.Email
from Person p1, Person p2
where p1.Email = p2.Email and p1.Id <> p2.Id