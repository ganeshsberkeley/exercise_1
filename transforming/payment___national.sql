DROP TABLE IF EXISTS payment___national_table;
CREATE TABLE payment___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	National_payment	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_National.csv" INTO TABLE payment___national_table;
