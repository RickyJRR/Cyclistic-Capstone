SELECT
  member_casual,
  ROUND(AVG(
    CAST(SPLIT(duration, ':')[OFFSET(0)] AS INT64) * 3600 +
    CAST(SPLIT(duration, ':')[OFFSET(1)] AS INT64) * 60 +
    CAST(SPLIT(duration, ':')[OFFSET(2)] AS INT64)
  ) / 60, 2) AS avg_duration_min,
  ROUND(APPROX_QUANTILES(
    CAST(SPLIT(duration, ':')[OFFSET(0)] AS INT64) * 3600 +
    CAST(SPLIT(duration, ':')[OFFSET(1)] AS INT64) * 60 +
    CAST(SPLIT(duration, ':')[OFFSET(2)] AS INT64), 2)[OFFSET(1)] / 60, 2) AS median_duration_min
FROM `my-project-2-498123.Bike_data_new.clean_combined_data`
GROUP BY member_casual;