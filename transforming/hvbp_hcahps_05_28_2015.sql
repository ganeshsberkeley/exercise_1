DROP TABLE IF EXISTS hvbp_hcahps_05_28_2015_log;
CREATE TABLE hvbp_hcahps_05_28_2015_log
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Communication_with_Nurses_Achievement_Points	varchar(500),
	Communication_with_Nurses_Improvement_Points	varchar(500),
	Communication_with_Nurses_Dimension_Score	varchar(500),
	Communication_with_Doctors_Achievement_Points	varchar(500),
	Communication_with_Doctors_Improvement_Points	varchar(500),
	Communication_with_Doctors_Dimension_Score	varchar(500),
	Responsiveness_of_Hospital_Staff_Achievement_Points	varchar(500),
	Responsiveness_of_Hospital_Staff_Improvement_Points	varchar(500),
	Responsiveness_of_Hospital_Staff_Dimension_Score	varchar(500),
	Pain_Management_Achievement_Points	varchar(500),
	Pain_Management_Improvement_Points	varchar(500),
	Pain_Management_Dimension_Score	varchar(500),
	Communication_about_Medicines_Achievement_Points	varchar(500),
	Communication_about_Medicines_Improvement_Points	varchar(500),
	Communication_about_Medicines_Dimension_Score	varchar(500),
	Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points	varchar(500),
	Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points	varchar(500),
	Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score	varchar(500),
	Discharge_Information_Achievement_Points	varchar(500),
	Discharge_Information_Improvement_Points	varchar(500),
	Discharge_Information_Dimension_Score	varchar(500),
	Overall_Rating_of_Hospital_Achievement_Points	varchar(500),
	Overall_Rating_of_Hospital_Improvement_Points	varchar(500),
	Overall_Rating_of_Hospital_Dimension_Score	varchar(500),
	HCAHPS_Base_Score	varchar(500),
	HCAHPS_Consistency_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hcahps_05_28_2015.csv" INTO TABLE hvbp_hcahps_05_28_2015_log;
