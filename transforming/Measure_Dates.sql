DROP TABLE IF EXISTS Measure_Dates_log;
CREATE TABLE Measure_Dates_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Measure_Start_Quarter	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Quarter	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Measure_Dates.csv" INTO TABLE Measure_Dates_log;
