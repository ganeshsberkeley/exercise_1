DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL_log;
CREATE TABLE HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL_log
(
	Hospital_Name	varchar(500),
	Provider_ID	varchar(500),
	State	varchar(500),
	Fiscal_Year	varchar(500),
	Domain_1_Score	varchar(500),
	AHRQ_PSI_90_Score	varchar(500),
	Domain_1_Start_Date	varchar(500),
	Domain_1_End_Date	varchar(500),
	Domain_2_Score	varchar(500),
	CLABSI_Score	varchar(500),
	CAUTI_Score	varchar(500),
	Domain_2_Start_Date	varchar(500),
	Domain_2_End_Date	varchar(500),
	Total_HAC_Score	varchar(500),
	Footnotes	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL.csv" INTO TABLE HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL_log;
