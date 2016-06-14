DROP TABLE IF EXISTS Timely_and_Effective_Care___National_log;
CREATE TABLE Timely_and_Effective_Care___National_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Condition	varchar(500),
	Category	varchar(500),
	Score	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Timely_and_Effective_Care_-_National.csv" INTO TABLE Timely_and_Effective_Care___National_log;
