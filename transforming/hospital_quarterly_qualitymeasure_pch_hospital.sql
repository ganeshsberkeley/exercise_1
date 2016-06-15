DROP TABLE IF EXISTS hospital_quarterly_qualitymeasure_pch_hospital_table;
CREATE TABLE hospital_quarterly_qualitymeasure_pch_hospital_table
(
	PROVIDER_ID	varchar(500),
	Hospital_Name	varchar(500),
	Hospital_Type	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	MEASURE_ID	varchar(500),
	MEASURE_DESCRIPTION	varchar(500),
	NUMERATOR	varchar(500),
	DENOMINATOR	varchar(500),
	FOOTNOTE	varchar(500),
	RPTG_PRD_START_DT	varchar(500),
	RPTG_PRD_END_DT	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_QUALITYMEASURE_PCH_HOSPITAL.csv" INTO TABLE hospital_quarterly_qualitymeasure_pch_hospital_table;
