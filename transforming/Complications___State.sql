DROP TABLE IF EXISTS Complications___State_log;
CREATE TABLE Complications___State_log
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Complications_-_State.csv" INTO TABLE Complications___State_log;
