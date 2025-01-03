-- Write your PostgreSQL query statement below
-- find all dates id with higher temp compared to previous dates

select w1.id
from weather w1
join weather w2
on w1.recordDate = w2.recordDate + Interval '1 Day'
where w1.temperature > w2.temperature
