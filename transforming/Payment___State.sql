DROP TABLE IF EXISTS Payment___State_log;
CREATE TABLE Payment___State_log
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Number_less_than_national_payment	varchar(500),
	Number_same_as_national_payment	varchar(500),
	Number_greater_than_national_payment	varchar(500),
	Number_of_hospitals_too_few	varchar(500),
	Footnote	varchar(500),
	Measure_start_date	varchar(500),
	Measure_end_date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_State.csv" INTO TABLE Payment___State_log;
