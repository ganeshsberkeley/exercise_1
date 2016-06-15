DROP TABLE IF EXISTS fy2013_value_based_incentive_payment_amount_table;
CREATE TABLE fy2013_value_based_incentive_payment_amount_table
(
	Incentive_Payment_Range	varchar(500),
	Number_of_Hospitals_Receiving_this_Range	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Value_Based_Incentive_Payment_Amount.csv" INTO TABLE fy2013_value_based_incentive_payment_amount_table;
