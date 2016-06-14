DROP TABLE IF EXISTS hvbp_hai_05_28_2015_log;
CREATE TABLE hvbp_hai_05_28_2015_log
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	Zip_Code	varchar(500),
	County_Name	varchar(500),
	SCIP_Inf_1_Performance_Rate	varchar(500),
	SCIP_Inf_1_Achievement_Points	varchar(500),
	SCIP_Inf_1_Improvement_Points	varchar(500),
	SCIP_Inf_1_Measure_Score	varchar(500),
	SCIP_Inf_2_Performance_Rate	varchar(500),
	SCIP_Inf_2_Achievement_Points	varchar(500),
	SCIP_Inf_2_Improvement_Points	varchar(500),
	SCIP_Inf_2_Measure_Score	varchar(500),
	SCIP_Inf_3_Performance_Rate	varchar(500),
	SCIP_Inf_3_Achievement_Points	varchar(500),
	SCIP_Inf_3_Improvement_Points	varchar(500),
	SCIP_Inf_3_Measure_Score	varchar(500),
	SCIP_Inf_4_Performance_Rate	varchar(500),
	SCIP_Inf_4_Achievement_Points	varchar(500),
	SCIP_Inf_4_Improvement_Points	varchar(500),
	SCIP_Inf_4_Measure_Score	varchar(500),
	SCIP_Inf_9_Performance_Rate	varchar(500),
	SCIP_Inf_9_Achievement_Points	varchar(500),
	SCIP_Inf_9_Improvement_Points	varchar(500),
	SCIP_Inf_9_Measure_Score	varchar(500),
	HAI_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hai_05_28_2015.csv" INTO TABLE hvbp_hai_05_28_2015_log;
