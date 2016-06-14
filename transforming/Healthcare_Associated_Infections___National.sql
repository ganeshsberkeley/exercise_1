DROP TABLE IF EXISTS Healthcare_Associated_Infections___National_log;
CREATE TABLE Healthcare_Associated_Infections___National_log
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Score	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Healthcare_Associated_Infections_-_National.csv" INTO TABLE Healthcare_Associated_Infections___National_log;
