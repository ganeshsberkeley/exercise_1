DROP TABLE IF EXISTS Readmissions_and_Deaths___Hospital_log;
CREATE TABLE Readmissions_and_Deaths___Hospital_log
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Compared_to_National	varchar(500),
	Denominator	varchar(500),
	Score	varchar(500),
	Lower_Estimate	varchar(500),
	Higher_Estimate	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Readmissions_and_Deaths_-_Hospital.csv" INTO TABLE Readmissions_and_Deaths___Hospital_log;
