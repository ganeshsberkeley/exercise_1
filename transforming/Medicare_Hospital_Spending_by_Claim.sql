DROP TABLE IF EXISTS Medicare_Hospital_Spending_by_Claim_log;
CREATE TABLE Medicare_Hospital_Spending_by_Claim_log
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
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_by_Claim.csv" INTO TABLE Medicare_Hospital_Spending_by_Claim_log;
