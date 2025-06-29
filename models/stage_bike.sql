with Bike as (
select
        RIDE_ID ,
		RIDEABLE_TYPE ,
		replace(STARTED_AT,'"','') as started_at ,
		replace(ENDED_AT,'"','') as ENDED_AT ,
		START_STATION_NAME ,
		START_STATIO_ID ,
		END_STATION_NAME ,
		END_STATION_ID ,
		START_LAT ,
		START_LNG ,
		END_LAT ,
		END_LNG ,
		MEMBER_CSUAL 
from {{ source('demo', 'bike') }}
where ride_id !='ride_id'
)

select * from Bike