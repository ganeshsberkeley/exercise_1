DROP TABLE IF EXISTS medicare_hospital_spending_by_claim_table;
CREATE TABLE medicare_hospital_spending_by_claim_table
(
	Hospital_Name	varchar(500),
	Provider_Number	varchar(500),
	State	varchar(500),
	Period	varchar(500),
	Claim_Type	varchar(500),
	Avg_Spending_Per_Episode_Hospital	varchar(500),
	Avg_Spending_Per_Episode_State	varchar(500),
	Avg_Spending_Per_Episode_Nation	varchar(500),
	Percent_of_Spending_Hospital	varchar(500),
	Percent_of_Spending_State	varchar(500),
	Percent_of_Spending_Nation	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_by_Claim.csv" INTO TABLE medicare_hospital_spending_by_claim_table;
