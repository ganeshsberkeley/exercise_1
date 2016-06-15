DROP TABLE IF EXISTS hvbp_hf_05_28_2015_table;
CREATE TABLE hvbp_hf_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	HF_1_Performance_Rate	varchar(500),
	HF_1_Achievement_Points	varchar(500),
	HF_1_Improvement_Points	varchar(500),
	HF_1_Measure_Score	varchar(500),
	HF_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hf_05_28_2015.csv" INTO TABLE hvbp_hf_05_28_2015_table;
