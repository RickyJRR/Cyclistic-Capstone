SELECT
  EXTRACT(MONTH FROM started_at) AS ride_month,
  member_casual,
  COUNT(*) AS ride_count
FROM `my-project-2-498123.Bike_data_new.clean_combined_data`
GROUP BY ride_month, member_casual
ORDER BY ride_month, member_casual;