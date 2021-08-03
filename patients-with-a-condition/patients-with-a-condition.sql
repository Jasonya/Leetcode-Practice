# Write your MySQL query statement below
select patient_id,
    patient_name,
    conditions
from Patients
where conditions like '% DIAB1%' or conditions like 'DIAB1%'



# ambuj_kumar's avatar
# ambuj_kumar

# 483
# June 25, 2021 2:41 PM

# 118 VIEWS

# SELECT * FROM Patients WHERE conditions LIKE 'DIAB1%' OR conditions LIKE '% DIAB1%'