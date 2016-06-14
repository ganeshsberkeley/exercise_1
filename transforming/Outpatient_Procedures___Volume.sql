DROP TABLE IF EXISTS Outpatient_Procedures___Volume_log;
CREATE TABLE Outpatient_Procedures___Volume_log
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Measure_ID	varchar(500),
	Gastrointestinal	varchar(500),
	Eye	varchar(500),
	Nervous_System	varchar(500),
	Musculoskeletal	varchar(500),
	Skin	varchar(500),
	Genitourinary	varchar(500),
	Cardiovascular	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Procedures_-_Volume.csv" INTO TABLE Outpatient_Procedures___Volume_log;
