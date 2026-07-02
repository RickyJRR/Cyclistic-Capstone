SELECT
  day_of_week,
  member_casual,
  COUNT(*) AS ride_count
FROM `my-project-2-498123.Bike_data_new.clean_combined_data`
GROUP BY day_of_week, member_casual
ORDER BY day_of_week, member_casual;