DROP TABLE IF EXISTS Outpatient_Imaging_Efficiency___State_log;
CREATE TABLE Outpatient_Imaging_Efficiency___State_log
(
	State	varchar(500),
	Measure_ID	varchar(500),
	Measure_Name	varchar(500),
	Score	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Imaging_Efficiency_-_State.csv" INTO TABLE Outpatient_Imaging_Efficiency___State_log;
