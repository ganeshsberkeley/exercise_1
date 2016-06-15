DROP TABLE IF EXISTS outpatient_imaging_efficiency___national_table;
CREATE TABLE outpatient_imaging_efficiency___national_table
(
	Measure_ID	varchar(500),
	Measure_Name	varchar(500),
	Score	varchar(500),
	Footnote	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Imaging_Efficiency_-_National.csv" INTO TABLE outpatient_imaging_efficiency___national_table;
