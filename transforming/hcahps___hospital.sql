DROP TABLE IF EXISTS hcahps___hospital_log;
CREATE TABLE hcahps___hospital_log
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	Patient_Survey_Star_Rating	varchar(500),
	Patient_Survey_Star_Rating_Footnote	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
	HCAHPS_Answer_Percent_Footnote	varchar(500),
	Number_of_Completed_Surveys	varchar(500),
	Number_of_Completed_Surveys_Footnote	varchar(500),
	Survey_Response_Rate_Percent	varchar(500),
	Survey_Response_Rate_Percent_Footnote	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_Hospital.csv" INTO TABLE hcahps___hospital_log;
