DROP TABLE IF EXISTS hvbp_tps_05_28_2015_table;
CREATE TABLE hvbp_tps_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	Zip_Code	varchar(500),
	County_Name	varchar(500),
	Unweighted_Normalized_Clinical_Process_of_Care_Domain_Score	varchar(500),
	Weighted_Clinical_Process_of_Care_Domain_Score	varchar(500),
	Unweighted_Patient_Experience_of_Care_Domain_Score	varchar(500),
	Weighted_Patient_Experience_of_Care_Domain_Score	varchar(500),
	Unweighted_Normalized_Outcome_Domain_Score	varchar(500),
	Weighted_Outcome_Domain_Score	varchar(500),
	Unweighted_Normalized_Efficiency_Domain_Score	varchar(500),
	Weighted_Efficiency_Domain_Score	varchar(500),
	Total_Performance_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_tps_05_28_2015.csv" INTO TABLE hvbp_tps_05_28_2015_table;
