with cte as (

select 
* 
from {{ ref('trip_fact') }} t
left join {{ ref('daily_weather') }} w
on w.daily_weather=t.trip_date
)

select * from CTE