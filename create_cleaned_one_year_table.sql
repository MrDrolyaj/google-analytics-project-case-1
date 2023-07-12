CREATE TABLE superb-joy-389606.cyclistic_data.year_trip_cleaned AS 

SELECT  

ride_id, 

rideable_type, 

started_at, 

ended_at, 

start_station_name, 

start_station_id, 

end_station_name, 

end_station_id, 

start_lat, 

start_lng, 

end_lat, 

end_lng,

member_casual,

time_of_day,

day_of_month,

ride_length,

day_of_week, 

month

FROM superb-joy-389606.cyclistic_data.year_trip_new 

WHERE NOT ((start_lat=end_lat AND start_lng=end_lng) OR (ride_length <= 0 OR ride_length >= 1440)) 