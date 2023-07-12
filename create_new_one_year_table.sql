CREATE TABLE superb-joy-389606.cyclistic_data.year_trip_new AS 

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

EXTRACT(TIME from started_at) AS start_time, 

EXTRACT(TIME from ended_at) AS end_time, 

EXTRACT(HOUR FROM started_at) AS time_of_day,

EXTRACT(DAY FROM started_at) AS day_of_month,

DATE_DIFF(ended_at, started_at, minute) AS ride_length,

  CASE 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 1 THEN 'Sun' 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 2 THEN 'Mon' 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 3 THEN 'Tues' 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 4 THEN 'Wed' 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 5 THEN 'Thur' 

  WHEN EXTRACT(DAYOFWEEK FROM started_at) = 6 THEN 'Fri' 

  ELSE'Sat'  

  END AS day_of_week, 

  CASE 

  WHEN EXTRACT(MONTH FROM started_at) = 1 THEN 'Jan' 

  WHEN EXTRACT(MONTH FROM started_at) = 2 THEN 'Feb' 

  WHEN EXTRACT(MONTH FROM started_at) = 3 THEN 'Mar' 

  WHEN EXTRACT(MONTH FROM started_at) = 4 THEN 'Apr' 

  WHEN EXTRACT(MONTH FROM started_at) = 5 THEN 'May' 

  WHEN EXTRACT(MONTH FROM started_at) = 6 THEN 'Jun' 

  WHEN EXTRACT(MONTH FROM started_at) = 7 THEN 'July' 

  WHEN EXTRACT(MONTH FROM started_at) = 8 THEN 'Aug' 

  WHEN EXTRACT(MONTH FROM started_at) = 9 THEN 'Sept' 

  WHEN EXTRACT(MONTH FROM started_at) = 10 THEN 'Oct' 

  WHEN EXTRACT(MONTH FROM started_at) = 11 THEN 'Nov' 

  ELSE 'Dec' 

  END AS month,

FROM superb-joy-389606.cyclistic_data.year_trip 
