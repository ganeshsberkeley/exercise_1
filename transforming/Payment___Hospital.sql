DROP TABLE IF EXISTS Payment___Hospital_log;
CREATE TABLE Payment___Hospital_log
(
	Provider_ID	varchar(500),
	Hospital_name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_name	varchar(500),
	Phone_number	varchar(500),
	Measure_name	varchar(500),
	Measure_ID	varchar(500),
	Category	varchar(500),
	Denominator	varchar(500),
	Payment	varchar(500),
	Lower_estimate	varchar(500),
	Higher_estimate	varchar(500),
	Footnote	varchar(500),
	Measure_start_date	varchar(500),
	Measure_end_date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_Hospital.csv" INTO TABLE Payment___Hospital_log;
