-- ############# THIS IS THE LIST OF QUERIES MADE FOR THE ANALYSIS ###############
-- ############# JUST REMOVE THE COMMENTS BEFORE EACH LINES ON A PARTICULAR QUERY TO RUN ############# 

-- TO COUNT THE NUMBER OF CASUAL VS MEMBER
-- SELECT member_casual,
--   COUNT(*) AS member_vs_casual
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY member_casual

-- MOST USED BIKE BY MEMBER
-- SELECT rideable_type,
--   member_casual,
--   COUNT(*) AS number_of_trips
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY rideable_type, member_casual

--TO CHECK IF WHY DOCKED BIKE IS NOT USED BY MEMBERS
-- SELECT rideable_type, member_casual, COUNT(rideable_type),
-- FROM superb-joy-389606.cyclistic_data.year_trip_new
-- WHERE rideable_type='docked_bike'
-- GROUP BY rideable_type, member_casual

-- AVERAGE RIDE LENGTH FOR EACH RIDERS
-- SELECT member_casual,
--   AVG(ride_length) AS average_ride_length
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY member_casual

-- AVERAGE RIDE LENGTH FOR EACH RIDERS BY BIKES
-- SELECT member_casual,
--       rideable_type,
--   AVG(ride_length) AS average_ride_length
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY member_casual, rideable_type


-- MAX RIDE LENGTH FOR EACH RIDERS
-- SELECT member_casual,
--   MAX(ride_length) AS maximum_ride_length
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY member_casual

-- TO FIND THE BUSIEST DAY OF THE WEEK
-- SELECT day_of_week,
--   COUNT(*)
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY day_of_week

--TO FIND THE BUSIEST DAY OF THE WEEK BY RIDERS
-- SELECT day_of_week,
--   member_casual,
--   COUNT(*) AS trips
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY day_of_week,
--   member_casual
-- ORDER BY member_casual, trips DESC

-- TO FIND THE BUSIEST MONTH
-- SELECT month,
--   COUNT(*)
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY month

-- TO FIND THE BUSIEST MONTH BY RIDERS
-- SELECT month,
--   member_casual,
--   COUNT(*) AS trips
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY month,
--   member_casual
-- ORDER BY member_casual, trips DESC

-- TO FIND THE BUSIEST HOUR IN A DAY
-- SELECT time_of_day,
--   COUNT(*) AS number_of_rides_per_hour
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY time_of_day
-- ORDER BY number_of_rides_per_hour DESC

-- TO FIND THE BUSIEST HOUR IN A DAY BY RIDERS
-- SELECT time_of_day,
--   member_casual,
--   COUNT(*) AS number_of_rides_per_hour
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- GROUP BY time_of_day, member_casual
-- ORDER BY member_casual, number_of_rides_per_hour DESC

--POPULAR STATION BY MEMBERSHIP
-- SELECT start_station_name,
--   member_casual,
--   COUNT(*) AS number_of_trips
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- WHERE start_station_name IS NOT NULL AND member_casual='casual'
-- GROUP BY start_station_name, member_casual
-- ORDER BY member_casual, number_of_trips DESC
-- LIMIT 10

--TO COUNT DISTINCT LOCATIONS
-- SELECT COUNT(DISTINCT start_station_name)
-- FROM superb-joy-389606.cyclistic_data.year_trip_cleaned
-- WHERE start_station_name IS NOT NULL