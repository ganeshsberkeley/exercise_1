DROP TABLE IF EXISTS FY2013_Value_Based_Incentive_Payment_Amount_log;
CREATE TABLE FY2013_Value_Based_Incentive_Payment_Amount_log
(
	Incentive_Payment_Range	varchar(500),
	Number_of_Hospitals_Receiving_this_Range	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Value_Based_Incentive_Payment_Amount.csv" INTO TABLE FY2013_Value_Based_Incentive_Payment_Amount_log;
