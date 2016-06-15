DROP TABLE IF EXISTS readmission_reduction_table;
CREATE TABLE readmission_reduction_table
(
	Hospital_Name	varchar(500),
	Provider_Number	varchar(500),
	State	varchar(500),
	Measure_Name	varchar(500),
	Number_of_Discharges	varchar(500),
	Footnote	varchar(500),
	Excess_Readmission_Ratio	varchar(500),
	Predicted_Readmission_Rate	varchar(500),
	Expected_Readmission_Rate	varchar(500),
	Number_of_Readmissions	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/READMISSION_REDUCTION.csv" INTO TABLE readmission_reduction_table;
