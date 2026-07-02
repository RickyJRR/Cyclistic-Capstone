

--Data Cleaning 


SELECT *  
FROM `my-project-2-498123.bike_data_Jan.Jan_bike_data`;



--New Table, Don't Mess With Source Data 


CREATE TABLE `my-project-2-498123.bike_data_Jan.Jan_bike_data_staging`
LIKE `my-project-2-498123.bike_data_Jan.Jan_bike_data`;



INSERT `my-project-2-498123.bike_data_Jan.Jan_bike_data_staging`
SELECT *
FROM `my-project-2-498123.bike_data_Jan.Jan_bike_data`;



--Check Duplicates
SELECT *,
ROW_NUMBER() OVER(
  PARTITION BY ride_id
  ORDER BY started_at)
FROM `my-project-2-498123.bike_data_Jan.Jan_bike_data_staging`;


WITH duplicate_cte AS
(
  SELECT *,
  ROW_NUMBER() OVER(
  PARTITION BY ride_id
  ORDER BY started_at) As row_num
FROM `my-project-2-498123.bike_data_Jan.Jan_bike_data_staging`
)
  
  SELECT *
  FROM duplicate_cte
  WHERE row_num > 1;

-- 0 Duplicates Found 

