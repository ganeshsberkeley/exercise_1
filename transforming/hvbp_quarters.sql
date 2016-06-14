DROP TABLE IF EXISTS hvbp_quarters_log;
CREATE TABLE hvbp_quarters_log
(
	Measure_ID	varchar(500),
	Measure_Description	varchar(500),
	Performance_Period	varchar(500),
	Baseline_Period	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_quarters.csv" INTO TABLE hvbp_quarters_log;
