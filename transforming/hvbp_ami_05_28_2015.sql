DROP TABLE IF EXISTS hvbp_ami_05_28_2015_log;
CREATE TABLE hvbp_ami_05_28_2015_log
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	AMI_7a_Performance_Rate	varchar(500),
	AMI_7a_Achievement_Points	varchar(500),
	AMI_7a_Improvement_Points	varchar(500),
	AMI_7a_Measure_Score	varchar(500),
	AMI_8a_Performance_Rate	varchar(500),
	AMI_8a_Achievement_Points	varchar(500),
	AMI_8a_Improvement_Points	varchar(500),
	AMI_8a_Measure_Score	varchar(500),
	AMI_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_ami_05_28_2015.csv" INTO TABLE hvbp_ami_05_28_2015_log;
