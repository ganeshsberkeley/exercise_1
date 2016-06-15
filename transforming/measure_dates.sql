DROP TABLE IF EXISTS measure_dates_log;
CREATE TABLE measure_dates_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Measure_Start_Quarter	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Quarter	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Measure_Dates.csv" INTO TABLE measure_dates_log;
