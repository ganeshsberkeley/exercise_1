DROP TABLE IF EXISTS hcahps___state_table;
CREATE TABLE hcahps___state_table
(
	State	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_State.csv" INTO TABLE hcahps___state_table;
