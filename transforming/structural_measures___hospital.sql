DROP TABLE IF EXISTS structural_measures___hospital_table;
CREATE TABLE structural_measures___hospital_table
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
	Measure_Response	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Structural_Measures_-_Hospital.csv" INTO TABLE structural_measures___hospital_table;
