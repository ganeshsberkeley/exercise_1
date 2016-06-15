DROP TABLE IF EXISTS hvbp_efficiency_05_20_2015_log;
CREATE TABLE hvbp_efficiency_05_20_2015_log
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	MSPB_1_Performance_Rate	varchar(500),
	MSPB_1_Achievement_Points	varchar(500),
	MSPB_1_Improvement_Points	varchar(500),
	MSPB_1_Measure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_Efficiency_05_20_2015.csv" INTO TABLE hvbp_efficiency_05_20_2015_log;
