WITH TRIPS as (

select 
RIDE_ID,
rideable_type,
date(to_timestamp(started_at)) as trip_date,
start_statio_id as start_station_id,
end_station_id,
member_csual as member_casual,
timestampdiff(second,to_timestamp(started_at),to_timestamp(ended_at))as trip_duration_seconds

from {{ ref('stage_bike') }}
where RIDE_ID!='ride_id'

)

select * from TRIPS