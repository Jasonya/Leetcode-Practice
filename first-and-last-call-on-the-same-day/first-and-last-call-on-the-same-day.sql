/* Write your T-SQL query statement below */
with a as (SELECT caller_id id1, recipient_id id2, call_time FROM Calls
UNION ALL
SELECT recipient_id id1, caller_id id2, call_time FROM Calls
           )
,first_last_call as (select id1, max(call_time) max_call, min(call_time) min_call from a 
            GROUP BY id1, format(call_time,'yyyy-MM-dd')
                    )
                    
   select distinct a.id1 as user_id
           from first_last_call c 
           join a on a.id1 = c.id1 and a.call_time in (max_call,min_call)
           group by a.id1, format(call_time,'yyyy-MM-dd')
           having max(id2) = min(id2)