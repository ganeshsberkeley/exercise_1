DROP TABLE IF EXISTS READMISSION_REDUCTION_log;
CREATE TABLE READMISSION_REDUCTION_log
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
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/READMISSION_REDUCTION.csv" INTO TABLE READMISSION_REDUCTION_log;
