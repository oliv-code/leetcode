-- Write your PostgreSQL query statement below

select machine_id
    ,ROUND(avg(end_time - start_time)::numeric, 3) AS processing_time
from (
    select machine_id
    ,process_id
    ,MAX(CASE WHEN activity_type = 'start' THEN timestamp ELSE NULL END) AS start_time
    ,MAX(CASE WHEN activity_type = 'end' THEN timestamp ELSE NULL END) AS end_time
    from activity
    group by machine_id
    ,process_id
) as process_time
group by machine_id

