# Write your MySQL query statement below
SELECT s.machine_id, ROUND(AVG(e.timestamp - s.timestamp), 3) as processing_time
from Activity s left join Activity e
on s.machine_id = e.machine_id
where s.activity_type = 'start' and e.activity_type = 'end'
GROUP BY s.machine_id;