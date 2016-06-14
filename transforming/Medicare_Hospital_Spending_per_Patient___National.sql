DROP TABLE IF EXISTS Medicare_Hospital_Spending_per_Patient___National_log;
CREATE TABLE Medicare_Hospital_Spending_per_Patient___National_log
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
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_per_Patient_-_National.csv" INTO TABLE Medicare_Hospital_Spending_per_Patient___National_log;
