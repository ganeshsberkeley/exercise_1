DROP TABLE IF EXISTS hvbp_outcome_05_18_2015_log;
CREATE TABLE hvbp_outcome_05_18_2015_log
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	MORT_30_AMI_Performance_Rate	varchar(500),
	MORT_30_AMI_Achievement_Points	varchar(500),
	MORT_30_AMI_Improvement_Points	varchar(500),
	MORT_30_AMI_Measure_Score	varchar(500),
	MORT_30_HF_Performance_Rate	varchar(500),
	MORT_30_HF_Achievement_Points	varchar(500),
	MORT_30_HF_Improvement_Points	varchar(500),
	MORT_30_HF_Measure_Score	varchar(500),
	MORT_30_PN_Performance_Rate	varchar(500),
	MORT_30_PN_Achievement_Points	varchar(500),
	MORT_30_PN_Improvement_Points	varchar(500),
	MORT_30_PN_Measure_Score	varchar(500),
	PSI_90_Performance_Rate	varchar(500),
	PSI_90_Achievement_Points	varchar(500),
	PSI_90_Improvement_Points	varchar(500),
	PSI_90_Measure_Score	varchar(500),
	HAI_1_Performance_Rate	varchar(500),
	HAI_1_Achievement_Points	varchar(500),
	HAI_1_Improvement_Points	varchar(500),
	HAI_1_Measure_Score	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_outcome_05_18_2015.csv" INTO TABLE hvbp_outcome_05_18_2015_log;
