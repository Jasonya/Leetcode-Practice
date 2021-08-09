# Write your MySQL query statement below
select sum(TIV_2016) as TIV_2016 from(
select PID, TIV_2015, TIV_2016, CONCAT(LAT,",",LON) as LOCATION
    from insurance) tbl
WHERE
TIV_2015 NOT IN
(SELECT TIV_2015 FROM insurance GROUP BY 1 HAVING COUNT(*)=1)
AND
LOCATION NOT IN
(SELECT CONCAT(LAT,",",LON) as location FROM insurance GROUP BY 1 HAVING COUNT(*)>1)

