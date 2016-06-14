DROP TABLE IF EXISTS HCAHPS___National_log;
CREATE TABLE HCAHPS___National_log
(
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_National.csv" INTO TABLE HCAHPS___National_log;
