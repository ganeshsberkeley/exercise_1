DROP TABLE IF EXISTS FY2013_Percent_Change_in_Medicare_Payments_log;
CREATE TABLE FY2013_Percent_Change_in_Medicare_Payments_log
(
	﻿_Change_in_Base_Operating_DRG_Payment_Amount	varchar(500),
	Number_of_Hospitals_Receiving_this__Change	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Percent_Change_in_Medicare_Payments.csv" INTO TABLE FY2013_Percent_Change_in_Medicare_Payments_log;
