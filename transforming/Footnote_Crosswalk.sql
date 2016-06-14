DROP TABLE IF EXISTS Footnote_Crosswalk_log;
CREATE TABLE Footnote_Crosswalk_log
(
	Footnote	varchar(500),
	Footnote_Text	varchar(500)
)
ROW FORMAT delimited fields terminated by '/t'
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Footnote_Crosswalk.csv" INTO TABLE Footnote_Crosswalk_log;
