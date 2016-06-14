DROP TABLE IF EXISTS FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt_log;
CREATE TABLE FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt_log
(
	Percentile	varchar(500),
	Net_Change_in_Base_Operating_DRG_Payment_Amount	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt.csv" INTO TABLE FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt_log;
