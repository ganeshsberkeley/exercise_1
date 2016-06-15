DROP TABLE IF EXISTS timely_and_effective_care___hospital_log;
CREATE TABLE timely_and_effective_care___hospital_log
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Condition	varchar(500),
	Measure_ID	varchar(500),
	Measure_Name	varchar(500),
	Score	varchar(500),
	Sample	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Timely_and_Effective_Care_-_Hospital.csv" INTO TABLE timely_and_effective_care___hospital_log;
