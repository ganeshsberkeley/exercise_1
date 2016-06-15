DROP TABLE IF EXISTS payment___state_table;
CREATE TABLE payment___state_table
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Number_less_than_national_payment	varchar(500),
	Number_same_as_national_payment	varchar(500),
	Number_greater_than_national_payment	varchar(500),
	Number_of_hospitals_too_few	varchar(500),
	Footnote	varchar(500),
	Measure_start_date	varchar(500),
	Measure_end_date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_State.csv" INTO TABLE payment___state_table;
