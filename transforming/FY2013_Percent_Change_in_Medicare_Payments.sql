DROP TABLE IF EXISTS FY2013_Percent_Change_in_Medicare_Payments_log;
CREATE TABLE FY2013_Percent_Change_in_Medicare_Payments_log
(
	Change_in_Base_Operating_DRG_Payment_Amount string,
	Number_of_Hospitals_Receiving_this__Change string

)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Percent_Change_in_Medicare_Payments.csv" INTO TABLE FY2013_Percent_Change_in_Medicare_Payments_log;
