


DROP TABLE IF EXISTS complications___hospital_table;
CREATE TABLE complications___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Compared_to_National	varchar(500),
	Denominator	varchar(500),
	Score	varchar(500),
	Lower_Estimate	varchar(500),
	Higher_Estimate	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Complications_-_Hospital.csv" INTO TABLE complications___hospital_table;



DROP TABLE IF EXISTS complications___national_table;
CREATE TABLE complications___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	National_Rate	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Complications_-_National.csv" INTO TABLE complications___national_table;



DROP TABLE IF EXISTS complications___state_table;
CREATE TABLE complications___state_table
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Complications_-_State.csv" INTO TABLE complications___state_table;



DROP TABLE IF EXISTS fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table;
CREATE TABLE fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table
(
	Percentile	varchar(500),
	Net_Change_in_Base_Operating_DRG_Payment_Amount	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt.csv" INTO TABLE fy2013_distribution_of_net_change_in_base_op_drg_payment_amt_table;



DROP TABLE IF EXISTS fy2013_net_change_in_base_op_drg_payment_amt_table;
CREATE TABLE fy2013_net_change_in_base_op_drg_payment_amt_table
(
	Net_Change_in_Base_Operating_DRG_Payment_Amount	varchar(500),
	Number_of_Hospitals_Receiving_this_Range	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Net_Change_in_Base_Op_DRG_Payment_Amt.csv" INTO TABLE fy2013_net_change_in_base_op_drg_payment_amt_table;



DROP TABLE IF EXISTS fy2013_percent_change_in_medicare_payments_table;
CREATE TABLE fy2013_percent_change_in_medicare_payments_table
(
	Change_in_Base_Operating_DRG_Payment_Amount string,
	Number_of_Hospitals_Receiving_this__Change string

)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Percent_Change_in_Medicare_Payments.csv" INTO TABLE fy2013_percent_change_in_medicare_payments_table;



DROP TABLE IF EXISTS fy2013_value_based_incentive_payment_amount_table;
CREATE TABLE fy2013_value_based_incentive_payment_amount_table
(
	Incentive_Payment_Range	varchar(500),
	Number_of_Hospitals_Receiving_this_Range	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/FY2013_Value_Based_Incentive_Payment_Amount.csv" INTO TABLE fy2013_value_based_incentive_payment_amount_table;



DROP TABLE IF EXISTS footnote_crosswalk_table;
CREATE TABLE footnote_crosswalk_table
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Footnote_Crosswalk.csv" INTO TABLE footnote_crosswalk_table;



DROP TABLE IF EXISTS hcahps___hospital_table;
CREATE TABLE hcahps___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	Patient_Survey_Star_Rating	varchar(500),
	Patient_Survey_Star_Rating_Footnote	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
	HCAHPS_Answer_Percent_Footnote	varchar(500),
	Number_of_Completed_Surveys	varchar(500),
	Number_of_Completed_Surveys_Footnote	varchar(500),
	Survey_Response_Rate_Percent	varchar(500),
	Survey_Response_Rate_Percent_Footnote	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_Hospital.csv" INTO TABLE hcahps___hospital_table;



DROP TABLE IF EXISTS hcahps___national_table;
CREATE TABLE hcahps___national_table
(
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_National.csv" INTO TABLE hcahps___national_table;



DROP TABLE IF EXISTS hcahps___state_table;
CREATE TABLE hcahps___state_table
(
	State	varchar(500),
	HCAHPS_Question	varchar(500),
	HCAHPS_Measure_ID	varchar(500),
	HCAHPS_Answer_Description	varchar(500),
	HCAHPS_Answer_Percent	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HCAHPS_-_State.csv" INTO TABLE hcahps___state_table;



DROP TABLE IF EXISTS hospital_quarterly_hac_domain_hospital_table;
CREATE TABLE hospital_quarterly_hac_domain_hospital_table
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL.csv" INTO TABLE hospital_quarterly_hac_domain_hospital_table;



DROP TABLE IF EXISTS hospital_quarterly_qualitymeasure_ipfqr_hospital_table;
CREATE TABLE hospital_quarterly_qualitymeasure_ipfqr_hospital_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	HBIPS_2_Measure_Description	varchar(500),
	HBIPS_2_Overall_Rate_Per_1000	varchar(500),
	HBIPS_2_Overall_Num	varchar(500),
	HBIPS_2_Overall_Den	varchar(500),
	HBIPS_2_Overall_Footnote	varchar(500),
	HBIPS_2_1_12_Rate_Per_1000	varchar(500),
	HBIPS_2_1_12_Num	varchar(500),
	HBIPS_2_1_12_Den	varchar(500),
	HBIPS_2_1_12_Footnote	varchar(500),
	HBIPS_2_13_17_Rate_Per_1000	varchar(500),
	HBIPS_2_13_17_Num	varchar(500),
	HBIPS_2_13_17_Den	varchar(500),
	HBIPS_2_13_17_Footnote	varchar(500),
	HBIPS_2_18_64_Rate_Per_1000	varchar(500),
	HBIPS_2_18_64_Num	varchar(500),
	HBIPS_2_18_64_Den	varchar(500),
	HBIPS_2_18_64_Footnote	varchar(500),
	HBIPS_2_65_Over_Rate_Per_1000	varchar(500),
	HBIPS_2_65_Over_Num	varchar(500),
	HBIPS_2_65_Over_Den	varchar(500),
	HBIPS_2_65_Over_Footnote	varchar(500),
	HBIPS_3_Measure_Description	varchar(500),
	HBIPS_3_Overall_Rate_Per_1000	varchar(500),
	HBIPS_3_Overall_Num	varchar(500),
	HBIPS_3_Overall_Den	varchar(500),
	HBIPS_3_Overall_Footnote	varchar(500),
	HBIPS_3_1_12_Rate_Per_1000	varchar(500),
	HBIPS_3_1_12_Num	varchar(500),
	HBIPS_3_1_12_Den	varchar(500),
	HBIPS_3_1_12_Footnote	varchar(500),
	HBIPS_3_13_17_Rate_Per_1000	varchar(500),
	HBIPS_3_13_17_Num	varchar(500),
	HBIPS_3_13_17_Den	varchar(500),
	HBIPS_3_13_17_Footnote	varchar(500),
	HBIPS_3_18_64_Rate_Per_1000	varchar(500),
	HBIPS_3_18_64_Num	varchar(500),
	HBIPS_3_18_64_Den	varchar(500),
	HBIPS_3_18_64_Footnote	varchar(500),
	HBIPS_3_65_Over_Rate_Per_1000	varchar(500),
	HBIPS_3_65_Over_Num	varchar(500),
	HBIPS_3_65_Over_Den	varchar(500),
	HBIPS_3_65_Over_Footnote	varchar(500),
	HBIPS_4_Measure_Description	varchar(500),
	HBIPS_4_Overall__of_Total	varchar(500),
	HBIPS_4_Overall_Num	varchar(500),
	HBIPS_4_Overall_Den	varchar(500),
	HBIPS_4_Overall_Footnote	varchar(500),
	HBIPS_4_1_12__of_Total	varchar(500),
	HBIPS_4_1_12_Num	varchar(500),
	HBIPS_4_1_12_Den	varchar(500),
	HBIPS_4_1_12_Footnote	varchar(500),
	HBIPS_4_13_17__of_Total	varchar(500),
	HBIPS_4_13_17_Num	varchar(500),
	HBIPS_4_13_17_Den	varchar(500),
	HBIPS_4_13_17_Footnote	varchar(500),
	HBIPS_4_18_64__of_Total	varchar(500),
	HBIPS_4_18_64_Num	varchar(500),
	HBIPS_4_18_64_Den	varchar(500),
	HBIPS_4_18_64_Footnote	varchar(500),
	HBIPS_4_65_Over__of_Total	varchar(500),
	HBIPS_4_65_Over_Num	varchar(500),
	HBIPS_4_65_Over_Den	varchar(500),
	HBIPS_4_65_Over_Footnote	varchar(500),
	HBIPS_5_Measure_Description	varchar(500),
	HBIPS_5_Overall__of_Total	varchar(500),
	HBIPS_5_Overall_Num	varchar(500),
	HBIPS_5_Overall_Den	varchar(500),
	HBIPS_5_Overall_Footnote	varchar(500),
	HBIPS_5_1_12__of_Total	varchar(500),
	HBIPS_5_1_12_Num	varchar(500),
	HBIPS_5_1_12_Den	varchar(500),
	HBIPS_5_1_12_Footnote	varchar(500),
	HBIPS_5_13_17__of_Total	varchar(500),
	HBIPS_5_13_17_Num	varchar(500),
	HBIPS_5_13_17_Den	varchar(500),
	HBIPS_5_13_17_Footnote	varchar(500),
	HBIPS_5_18_64__of_Total	varchar(500),
	HBIPS_5_18_64_Num	varchar(500),
	HBIPS_5_18_64_Den	varchar(500),
	HBIPS_5_18_64_Footnote	varchar(500),
	HBIPS_5_65_Over__of_Total	varchar(500),
	HBIPS_5_65_Over_Num	varchar(500),
	HBIPS_5_65_Over_Den	varchar(500),
	HBIPS_5_65_Over_Footnote	varchar(500),
	HBIPS_6_Measure_Description	varchar(500),
	HBIPS_6_Overall__of_Total	varchar(500),
	HBIPS_6_Overall_Num	varchar(500),
	HBIPS_6_Overall_Den	varchar(500),
	HBIPS_6_Overall_Footnote	varchar(500),
	HBIPS_6_1_12__of_Total	varchar(500),
	HBIPS_6_1_12_Num	varchar(500),
	HBIPS_6_1_12_Den	varchar(500),
	HBIPS_6_1_12_Footnote	varchar(500),
	HBIPS_6_13_17__of_Total	varchar(500),
	HBIPS_6_13_17_Num	varchar(500),
	HBIPS_6_13_17_Den	varchar(500),
	HBIPS_6_13_17_Footnote	varchar(500),
	HBIPS_6_18_64__of_Total	varchar(500),
	HBIPS_6_18_64_Num	varchar(500),
	HBIPS_6_18_64_Den	varchar(500),
	HBIPS_6_18_64_Footnote	varchar(500),
	HBIPS_6_65_Over__of_Total	varchar(500),
	HBIPS_6_65_Over_Num	varchar(500),
	HBIPS_6_65_Over_Den	varchar(500),
	HBIPS_6_65_Over_Footnote	varchar(500),
	HBIPS_7_Measure_Description	varchar(500),
	HBIPS_7_Overall__of_Total	varchar(500),
	HBIPS_7_Overall_Num	varchar(500),
	HBIPS_7_Overall_Den	varchar(500),
	HBIPS_7_Overall_Footnote	varchar(500),
	HBIPS_7_1_12__of_Total	varchar(500),
	HBIPS_7_1_12_Num	varchar(500),
	HBIPS_7_1_12_Den	varchar(500),
	HBIPS_7_1_12_Footnote	varchar(500),
	HBIPS_7_13_17__of_Total	varchar(500),
	HBIPS_7_13_17_Num	varchar(500),
	HBIPS_7_13_17_Den	varchar(500),
	HBIPS_7_13_17_Footnote	varchar(500),
	HBIPS_7_18_64__of_Total	varchar(500),
	HBIPS_7_18_64_Num	varchar(500),
	HBIPS_7_18_64_Den	varchar(500),
	HBIPS_7_18_64_Footnote	varchar(500),
	HBIPS_7_65_Over__of_Total	varchar(500),
	HBIPS_7_65_Over_Num	varchar(500),
	HBIPS_7_65_Over_Den	varchar(500),
	HBIPS_7_65_Over_Footnote	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_HOSPITAL.csv" INTO TABLE hospital_quarterly_qualitymeasure_ipfqr_hospital_table;



DROP TABLE IF EXISTS hospital_quarterly_qualitymeasure_ipfqr_national_table;
CREATE TABLE hospital_quarterly_qualitymeasure_ipfqr_national_table
(
	N_HBIPS_2_Measure_Description	varchar(500),
	N_HBIPS_2_Overall_Rate_Per_1000	varchar(500),
	N_HBIPS_2_Overall_Num	varchar(500),
	N_HBIPS_2_Overall_Den	varchar(500),
	N_HBIPS_2_1_12_Rate_Per_1000	varchar(500),
	N_HBIPS_2_1_12_Num	varchar(500),
	N_HBIPS_2_1_12_Den	varchar(500),
	N_HBIPS_2_13_17_Rate_Per_1000	varchar(500),
	N_HBIPS_2_13_17_Num	varchar(500),
	N_HBIPS_2_13_17_Den	varchar(500),
	N_HBIPS_2_18_64_Rate_Per_1000	varchar(500),
	N_HBIPS_2_18_64_Num	varchar(500),
	N_HBIPS_2_18_64_Den	varchar(500),
	N_HBIPS_2_65_Over_Rate_Per_1000	varchar(500),
	N_HBIPS_2_65_Over_Num	varchar(500),
	N_HBIPS_2_65_Over_Den	varchar(500),
	N_HBIPS_3_Measure_Description	varchar(500),
	N_HBIPS_3_Overall_Rate_Per_1000	varchar(500),
	N_HBIPS_3_Overall_Num	varchar(500),
	N_HBIPS_3_Overall_Den	varchar(500),
	N_HBIPS_3_1_12_Rate_Per_1000	varchar(500),
	N_HBIPS_3_1_12_Num	varchar(500),
	N_HBIPS_3_1_12_Den	varchar(500),
	N_HBIPS_3_13_17_Rate_Per_1000	varchar(500),
	N_HBIPS_3_13_17_Num	varchar(500),
	N_HBIPS_3_13_17_Den	varchar(500),
	N_HBIPS_3_18_64_Rate_Per_1000	varchar(500),
	N_HBIPS_3_18_64_Num	varchar(500),
	N_HBIPS_3_18_64_Den	varchar(500),
	N_HBIPS_3_65_Over_Rate_Per_1000	varchar(500),
	N_HBIPS_3_65_Over_Num	varchar(500),
	N_HBIPS_3_65_Over_Den	varchar(500),
	N_HBIPS_4_Measure_Description	varchar(500),
	N_HBIPS_4_Overall__of_Total	varchar(500),
	N_HBIPS_4_Overall_Num	varchar(500),
	N_HBIPS_4_Overall_Den	varchar(500),
	N_HBIPS_4_1_12__of_Total	varchar(500),
	N_HBIPS_4_1_12_Num	varchar(500),
	N_HBIPS_4_1_12_Den	varchar(500),
	N_HBIPS_4_13_17__of_Total	varchar(500),
	N_HBIPS_4_13_17_Num	varchar(500),
	N_HBIPS_4_13_17_Den	varchar(500),
	N_HBIPS_4_18_64__of_Total	varchar(500),
	N_HBIPS_4_18_64_Num	varchar(500),
	N_HBIPS_4_18_64_Den	varchar(500),
	N_HBIPS_4_65_Over__of_Total	varchar(500),
	N_HBIPS_4_65_Over_Num	varchar(500),
	N_HBIPS_4_65_Over_Den	varchar(500),
	N_HBIPS_5_Measure_Description	varchar(500),
	N_HBIPS_5_Overall__of_Total	varchar(500),
	N_HBIPS_5_Overall_Num	varchar(500),
	N_HBIPS_5_Overall_Den	varchar(500),
	N_HBIPS_5_1_12__of_Total	varchar(500),
	N_HBIPS_5_1_12_Num	varchar(500),
	N_HBIPS_5_1_12_Den	varchar(500),
	N_HBIPS_5_13_17__of_Total	varchar(500),
	N_HBIPS_5_13_17_Num	varchar(500),
	N_HBIPS_5_13_17_Den	varchar(500),
	N_HBIPS_5_18_64__of_Total	varchar(500),
	N_HBIPS_5_18_64_Num	varchar(500),
	N_HBIPS_5_18_64_Den	varchar(500),
	N_HBIPS_5_65_Over__of_Total	varchar(500),
	N_HBIPS_5_65_Over_Num	varchar(500),
	N_HBIPS_5_65_Over_Den	varchar(500),
	N_HBIPS_6_Measure_Description	varchar(500),
	N_HBIPS_6_Overall__of_Total	varchar(500),
	N_HBIPS_6_Overall_Num	varchar(500),
	N_HBIPS_6_Overall_Den	varchar(500),
	N_HBIPS_6_1_12__of_Total	varchar(500),
	N_HBIPS_6_1_12_Num	varchar(500),
	N_HBIPS_6_1_12_Den	varchar(500),
	N_HBIPS_6_13_17__of_Total	varchar(500),
	N_HBIPS_6_13_17_Num	varchar(500),
	N_HBIPS_6_13_17_Den	varchar(500),
	N_HBIPS_6_18_64__of_Total	varchar(500),
	N_HBIPS_6_18_64_Num	varchar(500),
	N_HBIPS_6_18_64_Den	varchar(500),
	N_HBIPS_6_65_Over__of_Total	varchar(500),
	N_HBIPS_6_65_Over_Num	varchar(500),
	N_HBIPS_6_65_Over_Den	varchar(500),
	N_HBIPS_7_Measure_Description	varchar(500),
	N_HBIPS_7_Overall__of_Total	varchar(500),
	N_HBIPS_7_Overall_Num	varchar(500),
	N_HBIPS_7_Overall_Den	varchar(500),
	N_HBIPS_7_1_12__of_Total	varchar(500),
	N_HBIPS_7_1_12_Num	varchar(500),
	N_HBIPS_7_1_12_Den	varchar(500),
	N_HBIPS_7_13_17__of_Total	varchar(500),
	N_HBIPS_7_13_17_Num	varchar(500),
	N_HBIPS_7_13_17_Den	varchar(500),
	N_HBIPS_7_18_64__of_Total	varchar(500),
	N_HBIPS_7_18_64_Num	varchar(500),
	N_HBIPS_7_18_64_Den	varchar(500),
	N_HBIPS_7_65_Over__of_Total	varchar(500),
	N_HBIPS_7_65_Over_Num	varchar(500),
	N_HBIPS_7_65_Over_Den	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_NATIONAL.csv" INTO TABLE hospital_quarterly_qualitymeasure_ipfqr_national_table;



DROP TABLE IF EXISTS hospital_quarterly_qualitymeasure_ipfqr_state_table;
CREATE TABLE hospital_quarterly_qualitymeasure_ipfqr_state_table
(
	State	varchar(500),
	S_HBIPS_2_Measure_Description	varchar(500),
	S_HBIPS_2_Overall_Rate_Per_1000	varchar(500),
	S_HBIPS_2_Overall_Num	varchar(500),
	S_HBIPS_2_Overall_Den	varchar(500),
	S_HBIPS_2_1_12_Rate_Per_1000	varchar(500),
	S_HBIPS_2_1_12_Num	varchar(500),
	S_HBIPS_2_1_12_Den	varchar(500),
	S_HBIPS_2_13_17_Rate_Per_1000	varchar(500),
	S_HBIPS_2_13_17_Num	varchar(500),
	S_HBIPS_2_13_17_Den	varchar(500),
	S_HBIPS_2_18_64_Rate_Per_1000	varchar(500),
	S_HBIPS_2_18_64_Num	varchar(500),
	S_HBIPS_2_18_64_Den	varchar(500),
	S_HBIPS_2_65_Over_Rate_Per_1000	varchar(500),
	S_HBIPS_2_65_Over_Num	varchar(500),
	S_HBIPS_2_65_Over_Den	varchar(500),
	S_HBIPS_3_Measure_Description	varchar(500),
	S_HBIPS_3_Overall_Rate_Per_1000	varchar(500),
	S_HBIPS_3_Overall_Num	varchar(500),
	S_HBIPS_3_Overall_Den	varchar(500),
	S_HBIPS_3_1_12_Rate_Per_1000	varchar(500),
	S_HBIPS_3_1_12_Num	varchar(500),
	S_HBIPS_3_1_12_Den	varchar(500),
	S_HBIPS_3_13_17_Rate_Per_1000	varchar(500),
	S_HBIPS_3_13_17_Num	varchar(500),
	S_HBIPS_3_13_17_Den	varchar(500),
	S_HBIPS_3_18_64_Rate_Per_1000	varchar(500),
	S_HBIPS_3_18_64_Num	varchar(500),
	S_HBIPS_3_18_64_Den	varchar(500),
	S_HBIPS_3_65_Over_Rate_Per_1000	varchar(500),
	S_HBIPS_3_65_Over_Num	varchar(500),
	S_HBIPS_3_65_Over_Den	varchar(500),
	S_HBIPS_4_Measure_Description	varchar(500),
	S_HBIPS_4_Overall__of_Total	varchar(500),
	S_HBIPS_4_Overall_Num	varchar(500),
	S_HBIPS_4_Overall_Den	varchar(500),
	S_HBIPS_4_1_12__of_Total	varchar(500),
	S_HBIPS_4_1_12_Num	varchar(500),
	S_HBIPS_4_1_12_Den	varchar(500),
	S_HBIPS_4_13_17__of_Total	varchar(500),
	S_HBIPS_4_13_17_Num	varchar(500),
	S_HBIPS_4_13_17_Den	varchar(500),
	S_HBIPS_4_18_64__of_Total	varchar(500),
	S_HBIPS_4_18_64_Num	varchar(500),
	S_HBIPS_4_18_64_Den	varchar(500),
	S_HBIPS_4_65_Over__of_Total	varchar(500),
	S_HBIPS_4_65_Over_Num	varchar(500),
	S_HBIPS_4_65_Over_Den	varchar(500),
	S_HBIPS_5_Measure_Description	varchar(500),
	S_HBIPS_5__of_Total	varchar(500),
	S_HBIPS_5_Overall_Num	varchar(500),
	S_HBIPS_5_Overall_Den	varchar(500),
	S_HBIPS_5_1_12__of_Total	varchar(500),
	S_HBIPS_5_1_12_Num	varchar(500),
	S_HBIPS_5_1_12_Den	varchar(500),
	S_HBIPS_5_13_17__of_Total	varchar(500),
	S_HBIPS_5_13_17_Num	varchar(500),
	S_HBIPS_5_13_17_Den	varchar(500),
	S_HBIPS_5_18_64__of_Total	varchar(500),
	S_HBIPS_5_18_64_Num	varchar(500),
	S_HBIPS_5_18_64_Den	varchar(500),
	S_HBIPS_5_65__of_Total	varchar(500),
	S_HBIPS_5_65_Over_Num	varchar(500),
	S_HBIPS_5_65_Over_Den	varchar(500),
	S_HBIPS_6_Measure_Description	varchar(500),
	S_HBIPS_6__of_Total	varchar(500),
	S_HBIPS_6_Overall_Num	varchar(500),
	S_HBIPS_6_Overall_Den	varchar(500),
	S_HBIPS_6_1_12__of_Total	varchar(500),
	S_HBIPS_6_1_12_Num	varchar(500),
	S_HBIPS_6_1_12_Den	varchar(500),
	S_HBIPS_6_13_17__of_Total	varchar(500),
	S_HBIPS_6_13_17_Num	varchar(500),
	S_HBIPS_6_13_17_Den	varchar(500),
	S_HBIPS_6_18_64__of_Total	varchar(500),
	S_HBIPS_6_18_64_Num	varchar(500),
	S_HBIPS_6_18_64_Den	varchar(500),
	S_HBIPS_6_65__of_Total	varchar(500),
	S_HBIPS_6_65_Over_Num	varchar(500),
	S_HBIPS_6_65_Over_Den	varchar(500),
	S_HBIPS_7_Measure_Description	varchar(500),
	S_HBIPS_7_Overall__of_Total	varchar(500),
	S_HBIPS_7_Overall_Num	varchar(500),
	S_HBIPS_7_Overall_Den	varchar(500),
	S_HBIPS_7_1_12__of_Total	varchar(500),
	S_HBIPS_7_1_12_Num	varchar(500),
	S_HBIPS_7_1_12_Den	varchar(500),
	S_HBIPS_7_13_17__of_Total	varchar(500),
	S_HBIPS_7_13_17_Num	varchar(500),
	S_HBIPS_7_13_17_Den	varchar(500),
	S_HBIPS_7_18_64__of_Total	varchar(500),
	S_HBIPS_7_18_64_Num	varchar(500),
	S_HBIPS_7_18_64_Den	varchar(500),
	S_HBIPS_7_65__of_Total	varchar(500),
	S_HBIPS_7_65_Over_Num	varchar(500),
	S_HBIPS_7_65_Over_Den	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_STATE.csv" INTO TABLE hospital_quarterly_qualitymeasure_ipfqr_state_table;



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



DROP TABLE IF EXISTS healthcare_associated_infections___hospital_table;
CREATE TABLE healthcare_associated_infections___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Compared_to_National	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Healthcare_Associated_Infections_-_Hospital.csv" INTO TABLE healthcare_associated_infections___hospital_table;



DROP TABLE IF EXISTS healthcare_associated_infections___national_table;
CREATE TABLE healthcare_associated_infections___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Healthcare_Associated_Infections_-_National.csv" INTO TABLE healthcare_associated_infections___national_table;



DROP TABLE IF EXISTS healthcare_associated_infections___state_table;
CREATE TABLE healthcare_associated_infections___state_table
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Healthcare_Associated_Infections_-_State.csv" INTO TABLE healthcare_associated_infections___state_table;



DROP TABLE IF EXISTS hospital_general_information_table;
CREATE TABLE hospital_general_information_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Hospital_Type	varchar(500),
	Hospital_Ownership	varchar(500),
	Emergency_Services	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Hospital_General_Information.csv" INTO TABLE hospital_general_information_table;



DROP TABLE IF EXISTS measure_dates_table;
CREATE TABLE measure_dates_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Measure_Start_Quarter	varchar(500),
	Measure_Start_Date	varchar(500),
	Measure_End_Quarter	varchar(500),
	Measure_End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Measure_Dates.csv" INTO TABLE measure_dates_table;



DROP TABLE IF EXISTS medicare_hospital_spending_by_claim_table;
CREATE TABLE medicare_hospital_spending_by_claim_table
(
	Hospital_Name	varchar(500),
	Provider_Number	varchar(500),
	State	varchar(500),
	Period	varchar(500),
	Claim_Type	varchar(500),
	Avg_Spending_Per_Episode_Hospital	varchar(500),
	Avg_Spending_Per_Episode_State	varchar(500),
	Avg_Spending_Per_Episode_Nation	varchar(500),
	Percent_of_Spending_Hospital	varchar(500),
	Percent_of_Spending_State	varchar(500),
	Percent_of_Spending_Nation	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_by_Claim.csv" INTO TABLE medicare_hospital_spending_by_claim_table;



DROP TABLE IF EXISTS medicare_hospital_spending_per_patient___hospital_table;
CREATE TABLE medicare_hospital_spending_per_patient___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_per_Patient_-_Hospital.csv" INTO TABLE medicare_hospital_spending_per_patient___hospital_table;



DROP TABLE IF EXISTS medicare_hospital_spending_per_patient___national_table;
CREATE TABLE medicare_hospital_spending_per_patient___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Score	varchar(500),
	Footnote___Score	varchar(500),
	National_Median	varchar(500),
	Footnote___National_Median	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_per_Patient_-_National.csv" INTO TABLE medicare_hospital_spending_per_patient___national_table;



DROP TABLE IF EXISTS medicare_hospital_spending_per_patient___state_table;
CREATE TABLE medicare_hospital_spending_per_patient___state_table
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Medicare_Hospital_Spending_per_Patient_-_State.csv" INTO TABLE medicare_hospital_spending_per_patient___state_table;



DROP TABLE IF EXISTS outpatient_imaging_efficiency___hospital_table;
CREATE TABLE outpatient_imaging_efficiency___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Imaging_Efficiency_-_Hospital.csv" INTO TABLE outpatient_imaging_efficiency___hospital_table;



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



DROP TABLE IF EXISTS outpatient_imaging_efficiency___state_table;
CREATE TABLE outpatient_imaging_efficiency___state_table
(
	State	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Imaging_Efficiency_-_State.csv" INTO TABLE outpatient_imaging_efficiency___state_table;



DROP TABLE IF EXISTS outpatient_procedures___volume_table;
CREATE TABLE outpatient_procedures___volume_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Measure_ID	varchar(500),
	Gastrointestinal	varchar(500),
	Eye	varchar(500),
	Nervous_System	varchar(500),
	Musculoskeletal	varchar(500),
	Skin	varchar(500),
	Genitourinary	varchar(500),
	Cardiovascular	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Outpatient_Procedures_-_Volume.csv" INTO TABLE outpatient_procedures___volume_table;



DROP TABLE IF EXISTS payment___hospital_table;
CREATE TABLE payment___hospital_table
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
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_Hospital.csv" INTO TABLE payment___hospital_table;



DROP TABLE IF EXISTS payment___national_table;
CREATE TABLE payment___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	National_payment	varchar(500),
	Number_less_than_national_payment	varchar(500),
	Number_same_as_national_payment	varchar(500),
	Number_greater_than_national_payment	varchar(500),
	Number_of_hospitals_too_few	varchar(500),
	Footnote	varchar(500),
	Measure_start_date	varchar(500),
	Measure_end_date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_National.csv" INTO TABLE payment___national_table;



DROP TABLE IF EXISTS payment___state_table;
CREATE TABLE payment___state_table
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
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Payment_-_State.csv" INTO TABLE payment___state_table;



DROP TABLE IF EXISTS readmission_reduction_table;
CREATE TABLE readmission_reduction_table
(
	Hospital_Name	varchar(500),
	Provider_Number	varchar(500),
	State	varchar(500),
	Measure_Name	varchar(500),
	Number_of_Discharges	varchar(500),
	Footnote	varchar(500),
	Excess_Readmission_Ratio	varchar(500),
	Predicted_Readmission_Rate	varchar(500),
	Expected_Readmission_Rate	varchar(500),
	Number_of_Readmissions	varchar(500),
	Start_Date	varchar(500),
	End_Date	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/READMISSION_REDUCTION.csv" INTO TABLE readmission_reduction_table;



DROP TABLE IF EXISTS readmissions_and_deaths___hospital_table;
CREATE TABLE readmissions_and_deaths___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Compared_to_National	varchar(500),
	Denominator	varchar(500),
	Score	varchar(500),
	Lower_Estimate	varchar(500),
	Higher_Estimate	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Readmissions_and_Deaths_-_Hospital.csv" INTO TABLE readmissions_and_deaths___hospital_table;



DROP TABLE IF EXISTS readmissions_and_deaths___national_table;
CREATE TABLE readmissions_and_deaths___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	National_Rate	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Readmissions_and_Deaths_-_National.csv" INTO TABLE readmissions_and_deaths___national_table;



DROP TABLE IF EXISTS readmissions_and_deaths___state_table;
CREATE TABLE readmissions_and_deaths___state_table
(
	State	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Number_of_Hospitals_Worse	varchar(500),
	Number_of_Hospitals_Same	varchar(500),
	Number_of_Hospitals_Better	varchar(500),
	Number_of_Hospitals_Too_Few	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Readmissions_and_Deaths_-_State.csv" INTO TABLE readmissions_and_deaths___state_table;



DROP TABLE IF EXISTS structural_measures___hospital_table;
CREATE TABLE structural_measures___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Measure_Response	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Structural_Measures_-_Hospital.csv" INTO TABLE structural_measures___hospital_table;



DROP TABLE IF EXISTS timely_and_effective_care___hospital_table;
CREATE TABLE timely_and_effective_care___hospital_table
(
	Provider_ID	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	Phone_Number	varchar(500),
	Condition	varchar(500),
	Measure_ID	varchar(500),
	Measure_Name	varchar(500),
	Score	varchar(500),
	Sample	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Timely_and_Effective_Care_-_Hospital.csv" INTO TABLE timely_and_effective_care___hospital_table;



DROP TABLE IF EXISTS timely_and_effective_care___national_table;
CREATE TABLE timely_and_effective_care___national_table
(
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
	Condition	varchar(500),
	Category	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Timely_and_Effective_Care_-_National.csv" INTO TABLE timely_and_effective_care___national_table;



DROP TABLE IF EXISTS timely_and_effective_care___state_table;
CREATE TABLE timely_and_effective_care___state_table
(
	State	varchar(500),
	Condition	varchar(500),
	Measure_Name	varchar(500),
	Measure_ID	varchar(500),
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/Timely_and_Effective_Care_-_State.csv" INTO TABLE timely_and_effective_care___state_table;



DROP TABLE IF EXISTS hvbp_efficiency_05_20_2015_table;
CREATE TABLE hvbp_efficiency_05_20_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	MSPB_1_Performance_Rate	varchar(500),
	MSPB_1_Achievement_Points	varchar(500),
	MSPB_1_Improvement_Points	varchar(500),
	MSPB_1_Measure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_Efficiency_05_20_2015.csv" INTO TABLE hvbp_efficiency_05_20_2015_table;



DROP TABLE IF EXISTS hvbp_ami_05_28_2015_table;
CREATE TABLE hvbp_ami_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	AMI_7a_Performance_Rate	varchar(500),
	AMI_7a_Achievement_Points	varchar(500),
	AMI_7a_Improvement_Points	varchar(500),
	AMI_7a_Measure_Score	varchar(500),
	AMI_8a_Performance_Rate	varchar(500),
	AMI_8a_Achievement_Points	varchar(500),
	AMI_8a_Improvement_Points	varchar(500),
	AMI_8a_Measure_Score	varchar(500),
	AMI_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_ami_05_28_2015.csv" INTO TABLE hvbp_ami_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_hai_05_28_2015_table;
CREATE TABLE hvbp_hai_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	Zip_Code	varchar(500),
	County_Name	varchar(500),
	SCIP_Inf_1_Performance_Rate	varchar(500),
	SCIP_Inf_1_Achievement_Points	varchar(500),
	SCIP_Inf_1_Improvement_Points	varchar(500),
	SCIP_Inf_1_Measure_Score	varchar(500),
	SCIP_Inf_2_Performance_Rate	varchar(500),
	SCIP_Inf_2_Achievement_Points	varchar(500),
	SCIP_Inf_2_Improvement_Points	varchar(500),
	SCIP_Inf_2_Measure_Score	varchar(500),
	SCIP_Inf_3_Performance_Rate	varchar(500),
	SCIP_Inf_3_Achievement_Points	varchar(500),
	SCIP_Inf_3_Improvement_Points	varchar(500),
	SCIP_Inf_3_Measure_Score	varchar(500),
	SCIP_Inf_4_Performance_Rate	varchar(500),
	SCIP_Inf_4_Achievement_Points	varchar(500),
	SCIP_Inf_4_Improvement_Points	varchar(500),
	SCIP_Inf_4_Measure_Score	varchar(500),
	SCIP_Inf_9_Performance_Rate	varchar(500),
	SCIP_Inf_9_Achievement_Points	varchar(500),
	SCIP_Inf_9_Improvement_Points	varchar(500),
	SCIP_Inf_9_Measure_Score	varchar(500),
	HAI_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hai_05_28_2015.csv" INTO TABLE hvbp_hai_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_hcahps_05_28_2015_table;
CREATE TABLE hvbp_hcahps_05_28_2015_table
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


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hcahps_05_28_2015.csv" INTO TABLE hvbp_hcahps_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_hf_05_28_2015_table;
CREATE TABLE hvbp_hf_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	HF_1_Performance_Rate	varchar(500),
	HF_1_Achievement_Points	varchar(500),
	HF_1_Improvement_Points	varchar(500),
	HF_1_Measure_Score	varchar(500),
	HF_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_hf_05_28_2015.csv" INTO TABLE hvbp_hf_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_outcome_05_18_2015_table;
CREATE TABLE hvbp_outcome_05_18_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	MORT_30_AMI_Performance_Rate	varchar(500),
	MORT_30_AMI_Achievement_Points	varchar(500),
	MORT_30_AMI_Improvement_Points	varchar(500),
	MORT_30_AMI_Measure_Score	varchar(500),
	MORT_30_HF_Performance_Rate	varchar(500),
	MORT_30_HF_Achievement_Points	varchar(500),
	MORT_30_HF_Improvement_Points	varchar(500),
	MORT_30_HF_Measure_Score	varchar(500),
	MORT_30_PN_Performance_Rate	varchar(500),
	MORT_30_PN_Achievement_Points	varchar(500),
	MORT_30_PN_Improvement_Points	varchar(500),
	MORT_30_PN_Measure_Score	varchar(500),
	PSI_90_Performance_Rate	varchar(500),
	PSI_90_Achievement_Points	varchar(500),
	PSI_90_Improvement_Points	varchar(500),
	PSI_90_Measure_Score	varchar(500),
	HAI_1_Performance_Rate	varchar(500),
	HAI_1_Achievement_Points	varchar(500),
	HAI_1_Improvement_Points	varchar(500),
	HAI_1_Measure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_outcome_05_18_2015.csv" INTO TABLE hvbp_outcome_05_18_2015_table;



DROP TABLE IF EXISTS hvbp_pn_05_28_2015_table;
CREATE TABLE hvbp_pn_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	PN_3b_Performance_Rate	varchar(500),
	PN_3b_Achievement_Points	varchar(500),
	PN_3b_Improvement_Points	varchar(500),
	PN_3b_Measure_Score	varchar(500),
	PN_6_Performance_Rate	varchar(500),
	PN_6_Achievement_Points	varchar(500),
	PN_6_Improvement_Points	varchar(500),
	PN_6_Measure_Score	varchar(500),
	PN_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_pn_05_28_2015.csv" INTO TABLE hvbp_pn_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_quarters_table;
CREATE TABLE hvbp_quarters_table
(
	Measure_ID	varchar(500),
	Measure_Description	varchar(500),
	Performance_Period	varchar(500),
	Baseline_Period	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_quarters.csv" INTO TABLE hvbp_quarters_table;



DROP TABLE IF EXISTS hvbp_scip_05_28_2015_table;
CREATE TABLE hvbp_scip_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	ZIP_Code	varchar(500),
	County_Name	varchar(500),
	SCIP_Card_2_Performance_Rate	varchar(500),
	SCIP_Card_2_Achievement_Points	varchar(500),
	SCIP_Card_2_Improvement_Points	varchar(500),
	SCIP_Card_2_Measure_Score	varchar(500),
	SCIP_VTE_2_Performance_Rate	varchar(500),
	SCIP_VTE_2_Achievement_Points	varchar(500),
	SCIP_VTE_2_Improvement_Points	varchar(500),
	SCIP_VTE_2_Measure_Score	varchar(500),
	SCIP_Condition_Procedure_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_scip_05_28_2015.csv" INTO TABLE hvbp_scip_05_28_2015_table;



DROP TABLE IF EXISTS hvbp_tps_05_28_2015_table;
CREATE TABLE hvbp_tps_05_28_2015_table
(
	Provider_Number	varchar(500),
	Hospital_Name	varchar(500),
	Address	varchar(500),
	City	varchar(500),
	State	varchar(500),
	Zip_Code	varchar(500),
	County_Name	varchar(500),
	Unweighted_Normalized_Clinical_Process_of_Care_Domain_Score	varchar(500),
	Weighted_Clinical_Process_of_Care_Domain_Score	varchar(500),
	Unweighted_Patient_Experience_of_Care_Domain_Score	varchar(500),
	Weighted_Patient_Experience_of_Care_Domain_Score	varchar(500),
	Unweighted_Normalized_Outcome_Domain_Score	varchar(500),
	Weighted_Outcome_Domain_Score	varchar(500),
	Unweighted_Normalized_Efficiency_Domain_Score	varchar(500),
	Weighted_Efficiency_Domain_Score	varchar(500),
	Total_Performance_Score	varchar(500)
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE;


LOAD DATA LOCAL INPATH "../hospital_compare/rn_backup/hvbp_tps_05_28_2015.csv" INTO TABLE hvbp_tps_05_28_2015_table;
