DROP TABLE IF EXISTS medicare_hospital_spending_per_patient___national_log;
CREATE TABLE medicare_hospital_spending_per_patient___national_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Score	varchar(500),
	Footnote___Score	varchar(500),
	National_Median	varchar(500),
	Footnote___National_Median	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_per_Patient_-_National.csv" INTO TABLE medicare_hospital_spending_per_patient___national_log;
