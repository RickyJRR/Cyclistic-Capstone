SELECT
  member_casual,
  start_station_name,
  COUNT(*) AS ride_count
FROM `my-project-2-498123.Bike_data_new.clean_combined_data`
WHERE start_station_name IS NOT NULL
GROUP BY member_casual, start_station_name
QUALIFY ROW_NUMBER() OVER (PARTITION BY member_casual ORDER BY COUNT(*) DESC) <= 10
ORDER BY member_casual, ride_count DESC;