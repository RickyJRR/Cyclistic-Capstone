--Data Cleaning 


SELECT *  
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data` ;



--New Table, Don't Mess With Source Data 


CREATE TABLE `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`
LIKE `my-project-2-498123.202605divvytripdata_1782325116810.bike_data`;



INSERT `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`
SELECT *
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data`;



--Remove Duplicates
SELECT *,
ROW_NUMBER() OVER(
  PARTITION BY ride_id
  ORDER BY started_at)
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`;


WITH duplicate_cte AS
(
  SELECT *,
  ROW_NUMBER() OVER(
  PARTITION BY ride_id
  ORDER BY started_at) As row_num
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`
)
  
  SELECT *
  FROM duplicate_cte
  WHERE row_num > 1;

-- 50 Duplicates Found 

SELECT *
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`
WHERE ride_id = '000FD7354F82855B';



--Created New Table Without Duplicates 

CREATE TABLE `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`( 
  `ride_id` string,
  `rideable_type` string,
  `started_at` timestamp, 
  `ended_at` timestamp,
  `start_station_name` string,
  start_station_id string,
  end_station_name string, 
  end_station_id string, 
  start_lat float64, 
  start_lng float64, 
  end_lat float64, 
  end_lng float64, 
  member_casual string, 
  row_num int64 ); 

INSERT INTO `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
SELECT *,
  ROW_NUMBER() OVER(
  PARTITION BY ride_id
  ORDER BY started_at) As row_num
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging`;

SELECT * 
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
WHERE row_num > 1;

DELETE
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
WHERE row_num > 1;


SELECT * 
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
WHERE row_num > 1;

 

SELECT * 
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
;


-- Delete row_num column

Alter Table `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`
Drop Column IF EXISTS row_num;
 



SELECT *
FROM `my-project-2-498123.202605divvytripdata_1782325116810.bike_data_staging2`




