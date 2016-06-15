DROP TABLE IF EXISTS footnote_crosswalk_log;
CREATE TABLE footnote_crosswalk_log
(
	Footnote	varchar(500),
	Footnote_Text	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Footnote_Crosswalk.csv" INTO TABLE footnote_crosswalk_log;
