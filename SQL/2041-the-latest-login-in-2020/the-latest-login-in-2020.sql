# Write your MySQL query statement below
SELECT user_id, MAX(time_stamp) as last_stamp
from Logins
where year(time_stamp) = 2020 
Group by user_id;