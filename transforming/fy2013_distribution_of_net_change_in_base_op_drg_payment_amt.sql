DROP TABLE IF EXISTS fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table;
CREATE TABLE fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table
(
	Percentile	varchar(500),
	Net_Change_in_Base_Operating_DRG_Payment_Amount	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt.csv" INTO TABLE fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table;
