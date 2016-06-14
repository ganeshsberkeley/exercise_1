DROP TABLE IF EXISTS Complications___National_log;
CREATE TABLE Complications___National_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	National_Rate	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Complications_-_National.csv" INTO TABLE Complications___National_log;
