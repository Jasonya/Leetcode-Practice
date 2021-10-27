# Write your MySQL query statement below
# select a.student_name as member_A,
#     b.student_name as member_B,
#     c.student_name as member_C
# from SchoolA a, SchoolB b, SchoolC c
# where a.student_name <> b.student_name
# and b.student_name <> c.student_name
# and c.student_name <> a.student_name

select A.student_name as member_A, B.student_name as member_B, C.student_name as member_C
from SchoolA A, SchoolB B, SchoolC C
where A.student_id != B.student_id and A.student_id != C.student_id and B.student_id != C.student_id and A.student_name != B.student_name and A.student_name != C.student_name and B.student_name != C.student_name