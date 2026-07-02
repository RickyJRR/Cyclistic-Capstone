SELECT
  member_casual,
  rideable_type,
  COUNT(*) AS ride_count,
  ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY member_casual), 2) AS pct_within_member_type
FROM `my-project-2-498123.Bike_data_new.clean_combined_data`
GROUP BY member_casual, rideable_type
ORDER BY member_casual, ride_count DESC;