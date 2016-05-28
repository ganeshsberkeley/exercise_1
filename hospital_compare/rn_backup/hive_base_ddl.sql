DROP TABLE IF EXISTS Complications___Hospital;
CREATE EXTERNAL TABLE Complications___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Compared_to_National string,
	Denominator string,
	Score string,
	Lower_Estimate string,
	Higher_Estimate string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Complications___National;
CREATE EXTERNAL TABLE Complications___National
(
	Measure_Name string,
	Measure_ID string,
	National_Rate string,
	Number_of_Hospitals_Worse string,
	Number_of_Hospitals_Same string,
	Number_of_Hospitals_Better string,
	Number_of_Hospitals_Too_Few string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Complications___State;
CREATE EXTERNAL TABLE Complications___State
(
	State string,
	Measure_Name string,
	Measure_ID string,
	Number_of_Hospitals_Worse string,
	Number_of_Hospitals_Same string,
	Number_of_Hospitals_Better string,
	Number_of_Hospitals_Too_Few string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt;
CREATE EXTERNAL TABLE FY2013_Distribution_of_Net_Change_in_Base_Op_DRG_Payment_Amt
(
	Percentile string,
	Net_Change_in_Base_Operating_DRG_Payment_Amount string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS FY2013_Net_Change_in_Base_Op_DRG_Payment_Amt;
CREATE EXTERNAL TABLE FY2013_Net_Change_in_Base_Op_DRG_Payment_Amt
(
	Net_Change_in_Base_Operating_DRG_Payment_Amount string,
	Number_of_Hospitals_Receiving_this_Range string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS FY2013_Percent_Change_in_Medicare_Payments;
CREATE EXTERNAL TABLE FY2013_Percent_Change_in_Medicare_Payments
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
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS FY2013_Value_Based_Incentive_Payment_Amount;
CREATE EXTERNAL TABLE FY2013_Value_Based_Incentive_Payment_Amount
(
	Incentive_Payment_Range string,
	Number_of_Hospitals_Receiving_this_Range string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Footnote_Crosswalk;
CREATE EXTERNAL TABLE Footnote_Crosswalk
(
	Footnote string,
	Footnote_Text string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HCAHPS___Hospital;
CREATE EXTERNAL TABLE HCAHPS___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	HCAHPS_Measure_ID string,
	HCAHPS_Question string,
	HCAHPS_Answer_Description string,
	Patient_Survey_Star_Rating string,
	Patient_Survey_Star_Rating_Footnote string,
	HCAHPS_Answer_Percent string,
	HCAHPS_Answer_Percent_Footnote string,
	Number_of_Completed_Surveys string,
	Number_of_Completed_Surveys_Footnote string,
	Survey_Response_Rate_Percent string,
	Survey_Response_Rate_Percent_Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HCAHPS___National;
CREATE EXTERNAL TABLE HCAHPS___National
(
	HCAHPS_Measure_ID string,
	HCAHPS_Question string,
	HCAHPS_Answer_Description string,
	HCAHPS_Answer_Percent string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HCAHPS___State;
CREATE EXTERNAL TABLE HCAHPS___State
(
	State string,
	HCAHPS_Question string,
	HCAHPS_Measure_ID string,
	HCAHPS_Answer_Description string,
	HCAHPS_Answer_Percent string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL;
CREATE EXTERNAL TABLE HOSPITAL_QUARTERLY_HAC_DOMAIN_HOSPITAL
(
	Hospital_Name string,
	Provider_ID string,
	State string,
	Fiscal_Year string,
	Domain_1_Score string,
	AHRQ_PSI_90_Score string,
	Domain_1_Start_Date string,
	Domain_1_End_Date string,
	Domain_2_Score string,
	CLABSI_Score string,
	CAUTI_Score string,
	Domain_2_Start_Date string,
	Domain_2_End_Date string,
	Total_HAC_Score string,
	Footnotes string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_HOSPITAL;
CREATE EXTERNAL TABLE HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_HOSPITAL
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	HBIPS_2_Measure_Description string,
	HBIPS_2_Overall_Rate_Per_1000 string,
	HBIPS_2_Overall_Num string,
	HBIPS_2_Overall_Den string,
	HBIPS_2_Overall_Footnote string,
	HBIPS_2_1_12_Rate_Per_1000 string,
	HBIPS_2_1_12_Num string,
	HBIPS_2_1_12_Den string,
	HBIPS_2_1_12_Footnote string,
	HBIPS_2_13_17_Rate_Per_1000 string,
	HBIPS_2_13_17_Num string,
	HBIPS_2_13_17_Den string,
	HBIPS_2_13_17_Footnote string,
	HBIPS_2_18_64_Rate_Per_1000 string,
	HBIPS_2_18_64_Num string,
	HBIPS_2_18_64_Den string,
	HBIPS_2_18_64_Footnote string,
	HBIPS_2_65_Over_Rate_Per_1000 string,
	HBIPS_2_65_Over_Num string,
	HBIPS_2_65_Over_Den string,
	HBIPS_2_65_Over_Footnote string,
	HBIPS_3_Measure_Description string,
	HBIPS_3_Overall_Rate_Per_1000 string,
	HBIPS_3_Overall_Num string,
	HBIPS_3_Overall_Den string,
	HBIPS_3_Overall_Footnote string,
	HBIPS_3_1_12_Rate_Per_1000 string,
	HBIPS_3_1_12_Num string,
	HBIPS_3_1_12_Den string,
	HBIPS_3_1_12_Footnote string,
	HBIPS_3_13_17_Rate_Per_1000 string,
	HBIPS_3_13_17_Num string,
	HBIPS_3_13_17_Den string,
	HBIPS_3_13_17_Footnote string,
	HBIPS_3_18_64_Rate_Per_1000 string,
	HBIPS_3_18_64_Num string,
	HBIPS_3_18_64_Den string,
	HBIPS_3_18_64_Footnote string,
	HBIPS_3_65_Over_Rate_Per_1000 string,
	HBIPS_3_65_Over_Num string,
	HBIPS_3_65_Over_Den string,
	HBIPS_3_65_Over_Footnote string,
	HBIPS_4_Measure_Description string,
	HBIPS_4_Overall__of_Total string,
	HBIPS_4_Overall_Num string,
	HBIPS_4_Overall_Den string,
	HBIPS_4_Overall_Footnote string,
	HBIPS_4_1_12__of_Total string,
	HBIPS_4_1_12_Num string,
	HBIPS_4_1_12_Den string,
	HBIPS_4_1_12_Footnote string,
	HBIPS_4_13_17__of_Total string,
	HBIPS_4_13_17_Num string,
	HBIPS_4_13_17_Den string,
	HBIPS_4_13_17_Footnote string,
	HBIPS_4_18_64__of_Total string,
	HBIPS_4_18_64_Num string,
	HBIPS_4_18_64_Den string,
	HBIPS_4_18_64_Footnote string,
	HBIPS_4_65_Over__of_Total string,
	HBIPS_4_65_Over_Num string,
	HBIPS_4_65_Over_Den string,
	HBIPS_4_65_Over_Footnote string,
	HBIPS_5_Measure_Description string,
	HBIPS_5_Overall__of_Total string,
	HBIPS_5_Overall_Num string,
	HBIPS_5_Overall_Den string,
	HBIPS_5_Overall_Footnote string,
	HBIPS_5_1_12__of_Total string,
	HBIPS_5_1_12_Num string,
	HBIPS_5_1_12_Den string,
	HBIPS_5_1_12_Footnote string,
	HBIPS_5_13_17__of_Total string,
	HBIPS_5_13_17_Num string,
	HBIPS_5_13_17_Den string,
	HBIPS_5_13_17_Footnote string,
	HBIPS_5_18_64__of_Total string,
	HBIPS_5_18_64_Num string,
	HBIPS_5_18_64_Den string,
	HBIPS_5_18_64_Footnote string,
	HBIPS_5_65_Over__of_Total string,
	HBIPS_5_65_Over_Num string,
	HBIPS_5_65_Over_Den string,
	HBIPS_5_65_Over_Footnote string,
	HBIPS_6_Measure_Description string,
	HBIPS_6_Overall__of_Total string,
	HBIPS_6_Overall_Num string,
	HBIPS_6_Overall_Den string,
	HBIPS_6_Overall_Footnote string,
	HBIPS_6_1_12__of_Total string,
	HBIPS_6_1_12_Num string,
	HBIPS_6_1_12_Den string,
	HBIPS_6_1_12_Footnote string,
	HBIPS_6_13_17__of_Total string,
	HBIPS_6_13_17_Num string,
	HBIPS_6_13_17_Den string,
	HBIPS_6_13_17_Footnote string,
	HBIPS_6_18_64__of_Total string,
	HBIPS_6_18_64_Num string,
	HBIPS_6_18_64_Den string,
	HBIPS_6_18_64_Footnote string,
	HBIPS_6_65_Over__of_Total string,
	HBIPS_6_65_Over_Num string,
	HBIPS_6_65_Over_Den string,
	HBIPS_6_65_Over_Footnote string,
	HBIPS_7_Measure_Description string,
	HBIPS_7_Overall__of_Total string,
	HBIPS_7_Overall_Num string,
	HBIPS_7_Overall_Den string,
	HBIPS_7_Overall_Footnote string,
	HBIPS_7_1_12__of_Total string,
	HBIPS_7_1_12_Num string,
	HBIPS_7_1_12_Den string,
	HBIPS_7_1_12_Footnote string,
	HBIPS_7_13_17__of_Total string,
	HBIPS_7_13_17_Num string,
	HBIPS_7_13_17_Den string,
	HBIPS_7_13_17_Footnote string,
	HBIPS_7_18_64__of_Total string,
	HBIPS_7_18_64_Num string,
	HBIPS_7_18_64_Den string,
	HBIPS_7_18_64_Footnote string,
	HBIPS_7_65_Over__of_Total string,
	HBIPS_7_65_Over_Num string,
	HBIPS_7_65_Over_Den string,
	HBIPS_7_65_Over_Footnote string,
	Start_Date string,
	End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_NATIONAL;
CREATE EXTERNAL TABLE HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_NATIONAL
(
	N_HBIPS_2_Measure_Description string,
	N_HBIPS_2_Overall_Rate_Per_1000 string,
	N_HBIPS_2_Overall_Num string,
	N_HBIPS_2_Overall_Den string,
	N_HBIPS_2_1_12_Rate_Per_1000 string,
	N_HBIPS_2_1_12_Num string,
	N_HBIPS_2_1_12_Den string,
	N_HBIPS_2_13_17_Rate_Per_1000 string,
	N_HBIPS_2_13_17_Num string,
	N_HBIPS_2_13_17_Den string,
	N_HBIPS_2_18_64_Rate_Per_1000 string,
	N_HBIPS_2_18_64_Num string,
	N_HBIPS_2_18_64_Den string,
	N_HBIPS_2_65_Over_Rate_Per_1000 string,
	N_HBIPS_2_65_Over_Num string,
	N_HBIPS_2_65_Over_Den string,
	N_HBIPS_3_Measure_Description string,
	N_HBIPS_3_Overall_Rate_Per_1000 string,
	N_HBIPS_3_Overall_Num string,
	N_HBIPS_3_Overall_Den string,
	N_HBIPS_3_1_12_Rate_Per_1000 string,
	N_HBIPS_3_1_12_Num string,
	N_HBIPS_3_1_12_Den string,
	N_HBIPS_3_13_17_Rate_Per_1000 string,
	N_HBIPS_3_13_17_Num string,
	N_HBIPS_3_13_17_Den string,
	N_HBIPS_3_18_64_Rate_Per_1000 string,
	N_HBIPS_3_18_64_Num string,
	N_HBIPS_3_18_64_Den string,
	N_HBIPS_3_65_Over_Rate_Per_1000 string,
	N_HBIPS_3_65_Over_Num string,
	N_HBIPS_3_65_Over_Den string,
	N_HBIPS_4_Measure_Description string,
	N_HBIPS_4_Overall__of_Total string,
	N_HBIPS_4_Overall_Num string,
	N_HBIPS_4_Overall_Den string,
	N_HBIPS_4_1_12__of_Total string,
	N_HBIPS_4_1_12_Num string,
	N_HBIPS_4_1_12_Den string,
	N_HBIPS_4_13_17__of_Total string,
	N_HBIPS_4_13_17_Num string,
	N_HBIPS_4_13_17_Den string,
	N_HBIPS_4_18_64__of_Total string,
	N_HBIPS_4_18_64_Num string,
	N_HBIPS_4_18_64_Den string,
	N_HBIPS_4_65_Over__of_Total string,
	N_HBIPS_4_65_Over_Num string,
	N_HBIPS_4_65_Over_Den string,
	N_HBIPS_5_Measure_Description string,
	N_HBIPS_5_Overall__of_Total string,
	N_HBIPS_5_Overall_Num string,
	N_HBIPS_5_Overall_Den string,
	N_HBIPS_5_1_12__of_Total string,
	N_HBIPS_5_1_12_Num string,
	N_HBIPS_5_1_12_Den string,
	N_HBIPS_5_13_17__of_Total string,
	N_HBIPS_5_13_17_Num string,
	N_HBIPS_5_13_17_Den string,
	N_HBIPS_5_18_64__of_Total string,
	N_HBIPS_5_18_64_Num string,
	N_HBIPS_5_18_64_Den string,
	N_HBIPS_5_65_Over__of_Total string,
	N_HBIPS_5_65_Over_Num string,
	N_HBIPS_5_65_Over_Den string,
	N_HBIPS_6_Measure_Description string,
	N_HBIPS_6_Overall__of_Total string,
	N_HBIPS_6_Overall_Num string,
	N_HBIPS_6_Overall_Den string,
	N_HBIPS_6_1_12__of_Total string,
	N_HBIPS_6_1_12_Num string,
	N_HBIPS_6_1_12_Den string,
	N_HBIPS_6_13_17__of_Total string,
	N_HBIPS_6_13_17_Num string,
	N_HBIPS_6_13_17_Den string,
	N_HBIPS_6_18_64__of_Total string,
	N_HBIPS_6_18_64_Num string,
	N_HBIPS_6_18_64_Den string,
	N_HBIPS_6_65_Over__of_Total string,
	N_HBIPS_6_65_Over_Num string,
	N_HBIPS_6_65_Over_Den string,
	N_HBIPS_7_Measure_Description string,
	N_HBIPS_7_Overall__of_Total string,
	N_HBIPS_7_Overall_Num string,
	N_HBIPS_7_Overall_Den string,
	N_HBIPS_7_1_12__of_Total string,
	N_HBIPS_7_1_12_Num string,
	N_HBIPS_7_1_12_Den string,
	N_HBIPS_7_13_17__of_Total string,
	N_HBIPS_7_13_17_Num string,
	N_HBIPS_7_13_17_Den string,
	N_HBIPS_7_18_64__of_Total string,
	N_HBIPS_7_18_64_Num string,
	N_HBIPS_7_18_64_Den string,
	N_HBIPS_7_65_Over__of_Total string,
	N_HBIPS_7_65_Over_Num string,
	N_HBIPS_7_65_Over_Den string,
	Start_Date string,
	End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_STATE;
CREATE EXTERNAL TABLE HOSPITAL_QUARTERLY_QUALITYMEASURE_IPFQR_STATE
(
	State string,
	S_HBIPS_2_Measure_Description string,
	S_HBIPS_2_Overall_Rate_Per_1000 string,
	S_HBIPS_2_Overall_Num string,
	S_HBIPS_2_Overall_Den string,
	S_HBIPS_2_1_12_Rate_Per_1000 string,
	S_HBIPS_2_1_12_Num string,
	S_HBIPS_2_1_12_Den string,
	S_HBIPS_2_13_17_Rate_Per_1000 string,
	S_HBIPS_2_13_17_Num string,
	S_HBIPS_2_13_17_Den string,
	S_HBIPS_2_18_64_Rate_Per_1000 string,
	S_HBIPS_2_18_64_Num string,
	S_HBIPS_2_18_64_Den string,
	S_HBIPS_2_65_Over_Rate_Per_1000 string,
	S_HBIPS_2_65_Over_Num string,
	S_HBIPS_2_65_Over_Den string,
	S_HBIPS_3_Measure_Description string,
	S_HBIPS_3_Overall_Rate_Per_1000 string,
	S_HBIPS_3_Overall_Num string,
	S_HBIPS_3_Overall_Den string,
	S_HBIPS_3_1_12_Rate_Per_1000 string,
	S_HBIPS_3_1_12_Num string,
	S_HBIPS_3_1_12_Den string,
	S_HBIPS_3_13_17_Rate_Per_1000 string,
	S_HBIPS_3_13_17_Num string,
	S_HBIPS_3_13_17_Den string,
	S_HBIPS_3_18_64_Rate_Per_1000 string,
	S_HBIPS_3_18_64_Num string,
	S_HBIPS_3_18_64_Den string,
	S_HBIPS_3_65_Over_Rate_Per_1000 string,
	S_HBIPS_3_65_Over_Num string,
	S_HBIPS_3_65_Over_Den string,
	S_HBIPS_4_Measure_Description string,
	S_HBIPS_4_Overall__of_Total string,
	S_HBIPS_4_Overall_Num string,
	S_HBIPS_4_Overall_Den string,
	S_HBIPS_4_1_12__of_Total string,
	S_HBIPS_4_1_12_Num string,
	S_HBIPS_4_1_12_Den string,
	S_HBIPS_4_13_17__of_Total string,
	S_HBIPS_4_13_17_Num string,
	S_HBIPS_4_13_17_Den string,
	S_HBIPS_4_18_64__of_Total string,
	S_HBIPS_4_18_64_Num string,
	S_HBIPS_4_18_64_Den string,
	S_HBIPS_4_65_Over__of_Total string,
	S_HBIPS_4_65_Over_Num string,
	S_HBIPS_4_65_Over_Den string,
	S_HBIPS_5_Measure_Description string,
	S_HBIPS_5__of_Total string,
	S_HBIPS_5_Overall_Num string,
	S_HBIPS_5_Overall_Den string,
	S_HBIPS_5_1_12__of_Total string,
	S_HBIPS_5_1_12_Num string,
	S_HBIPS_5_1_12_Den string,
	S_HBIPS_5_13_17__of_Total string,
	S_HBIPS_5_13_17_Num string,
	S_HBIPS_5_13_17_Den string,
	S_HBIPS_5_18_64__of_Total string,
	S_HBIPS_5_18_64_Num string,
	S_HBIPS_5_18_64_Den string,
	S_HBIPS_5_65__of_Total string,
	S_HBIPS_5_65_Over_Num string,
	S_HBIPS_5_65_Over_Den string,
	S_HBIPS_6_Measure_Description string,
	S_HBIPS_6__of_Total string,
	S_HBIPS_6_Overall_Num string,
	S_HBIPS_6_Overall_Den string,
	S_HBIPS_6_1_12__of_Total string,
	S_HBIPS_6_1_12_Num string,
	S_HBIPS_6_1_12_Den string,
	S_HBIPS_6_13_17__of_Total string,
	S_HBIPS_6_13_17_Num string,
	S_HBIPS_6_13_17_Den string,
	S_HBIPS_6_18_64__of_Total string,
	S_HBIPS_6_18_64_Num string,
	S_HBIPS_6_18_64_Den string,
	S_HBIPS_6_65__of_Total string,
	S_HBIPS_6_65_Over_Num string,
	S_HBIPS_6_65_Over_Den string,
	S_HBIPS_7_Measure_Description string,
	S_HBIPS_7_Overall__of_Total string,
	S_HBIPS_7_Overall_Num string,
	S_HBIPS_7_Overall_Den string,
	S_HBIPS_7_1_12__of_Total string,
	S_HBIPS_7_1_12_Num string,
	S_HBIPS_7_1_12_Den string,
	S_HBIPS_7_13_17__of_Total string,
	S_HBIPS_7_13_17_Num string,
	S_HBIPS_7_13_17_Den string,
	S_HBIPS_7_18_64__of_Total string,
	S_HBIPS_7_18_64_Num string,
	S_HBIPS_7_18_64_Den string,
	S_HBIPS_7_65__of_Total string,
	S_HBIPS_7_65_Over_Num string,
	S_HBIPS_7_65_Over_Den string,
	Start_Date string,
	End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS HOSPITAL_QUARTERLY_QUALITYMEASURE_PCH_HOSPITAL;
CREATE EXTERNAL TABLE HOSPITAL_QUARTERLY_QUALITYMEASURE_PCH_HOSPITAL
(
	PROVIDER_ID string,
	Hospital_Name string,
	Hospital_Type string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	MEASURE_ID string,
	MEASURE_DESCRIPTION string,
	NUMERATOR string,
	DENOMINATOR string,
	FOOTNOTE string,
	RPTG_PRD_START_DT string,
	RPTG_PRD_END_DT string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Healthcare_Associated_Infections___Hospital;
CREATE EXTERNAL TABLE Healthcare_Associated_Infections___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Compared_to_National string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Healthcare_Associated_Infections___National;
CREATE EXTERNAL TABLE Healthcare_Associated_Infections___National
(
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Healthcare_Associated_Infections___State;
CREATE EXTERNAL TABLE Healthcare_Associated_Infections___State
(
	State string,
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Hospital_General_Information;
CREATE EXTERNAL TABLE Hospital_General_Information
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Hospital_Type string,
	Hospital_Ownership string,
	Emergency_Services string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Measure_Dates;
CREATE EXTERNAL TABLE Measure_Dates
(
	Measure_Name string,
	Measure_ID string,
	Measure_Start_Quarter string,
	Measure_Start_Date string,
	Measure_End_Quarter string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Medicare_Hospital_Spending_by_Claim;
CREATE EXTERNAL TABLE Medicare_Hospital_Spending_by_Claim
(
	Hospital_Name string,
	Provider_Number string,
	State string,
	Period string,
	Claim_Type string,
	Avg_Spending_Per_Episode_Hospital string,
	Avg_Spending_Per_Episode_State string,
	Avg_Spending_Per_Episode_Nation string,
	Percent_of_Spending_Hospital string,
	Percent_of_Spending_State string,
	Percent_of_Spending_Nation string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Medicare_Hospital_Spending_per_Patient___Hospital;
CREATE EXTERNAL TABLE Medicare_Hospital_Spending_per_Patient___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Medicare_Hospital_Spending_per_Patient___National;
CREATE EXTERNAL TABLE Medicare_Hospital_Spending_per_Patient___National
(
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote___Score string,
	National_Median string,
	Footnote___National_Median string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Medicare_Hospital_Spending_per_Patient___State;
CREATE EXTERNAL TABLE Medicare_Hospital_Spending_per_Patient___State
(
	State string,
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Outpatient_Imaging_Efficiency___Hospital;
CREATE EXTERNAL TABLE Outpatient_Imaging_Efficiency___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_ID string,
	Measure_Name string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Outpatient_Imaging_Efficiency___National;
CREATE EXTERNAL TABLE Outpatient_Imaging_Efficiency___National
(
	Measure_ID string,
	Measure_Name string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Outpatient_Imaging_Efficiency___State;
CREATE EXTERNAL TABLE Outpatient_Imaging_Efficiency___State
(
	State string,
	Measure_ID string,
	Measure_Name string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Outpatient_Procedures___Volume;
CREATE EXTERNAL TABLE Outpatient_Procedures___Volume
(
	Provider_ID string,
	Hospital_Name string,
	Measure_ID string,
	Gastrointestinal string,
	Eye string,
	Nervous_System string,
	Musculoskeletal string,
	Skin string,
	Genitourinary string,
	Cardiovascular string,
	Start_Date string,
	End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Payment___Hospital;
CREATE EXTERNAL TABLE Payment___Hospital
(
	Provider_ID string,
	Hospital_name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_name string,
	Phone_number string,
	Measure_name string,
	Measure_ID string,
	Category string,
	Denominator string,
	Payment string,
	Lower_estimate string,
	Higher_estimate string,
	Footnote string,
	Measure_start_date string,
	Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Payment___National;
CREATE EXTERNAL TABLE Payment___National
(
	Measure_Name string,
	Measure_ID string,
	National_payment string,
	Number_less_than_national_payment string,
	Number_same_as_national_payment string,
	Number_greater_than_national_payment string,
	Number_of_hospitals_too_few string,
	Footnote string,
	Measure_start_date string,
	Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Payment___State;
CREATE EXTERNAL TABLE Payment___State
(
	State string,
	Measure_Name string,
	Measure_ID string,
	Number_less_than_national_payment string,
	Number_same_as_national_payment string,
	Number_greater_than_national_payment string,
	Number_of_hospitals_too_few string,
	Footnote string,
	Measure_start_date string,
	Measure_end_date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS READMISSION_REDUCTION;
CREATE EXTERNAL TABLE READMISSION_REDUCTION
(
	Hospital_Name string,
	Provider_Number string,
	State string,
	Measure_Name string,
	Number_of_Discharges string,
	Footnote string,
	Excess_Readmission_Ratio string,
	Predicted_Readmission_Rate string,
	Expected_Readmission_Rate string,
	Number_of_Readmissions string,
	Start_Date string,
	End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Readmissions_and_Deaths___Hospital;
CREATE EXTERNAL TABLE Readmissions_and_Deaths___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Compared_to_National string,
	Denominator string,
	Score string,
	Lower_Estimate string,
	Higher_Estimate string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Readmissions_and_Deaths___National;
CREATE EXTERNAL TABLE Readmissions_and_Deaths___National
(
	Measure_Name string,
	Measure_ID string,
	National_Rate string,
	Number_of_Hospitals_Worse string,
	Number_of_Hospitals_Same string,
	Number_of_Hospitals_Better string,
	Number_of_Hospitals_Too_Few string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Readmissions_and_Deaths___State;
CREATE EXTERNAL TABLE Readmissions_and_Deaths___State
(
	State string,
	Measure_Name string,
	Measure_ID string,
	Number_of_Hospitals_Worse string,
	Number_of_Hospitals_Same string,
	Number_of_Hospitals_Better string,
	Number_of_Hospitals_Too_Few string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Structural_Measures___Hospital;
CREATE EXTERNAL TABLE Structural_Measures___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Measure_Name string,
	Measure_ID string,
	Measure_Response string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Timely_and_Effective_Care___Hospital;
CREATE EXTERNAL TABLE Timely_and_Effective_Care___Hospital
(
	Provider_ID string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Phone_Number string,
	Condition string,
	Measure_ID string,
	Measure_Name string,
	Score string,
	Sample string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Timely_and_Effective_Care___National;
CREATE EXTERNAL TABLE Timely_and_Effective_Care___National
(
	Measure_Name string,
	Measure_ID string,
	Condition string,
	Category string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS Timely_and_Effective_Care___State;
CREATE EXTERNAL TABLE Timely_and_Effective_Care___State
(
	State string,
	Condition string,
	Measure_Name string,
	Measure_ID string,
	Score string,
	Footnote string,
	Measure_Start_Date string,
	Measure_End_Date string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_Efficiency_05_20_2015;
CREATE EXTERNAL TABLE hvbp_Efficiency_05_20_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	MSPB_1_Performance_Rate string,
	MSPB_1_Achievement_Points string,
	MSPB_1_Improvement_Points string,
	MSPB_1_Measure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_ami_05_28_2015;
CREATE EXTERNAL TABLE hvbp_ami_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	AMI_7a_Performance_Rate string,
	AMI_7a_Achievement_Points string,
	AMI_7a_Improvement_Points string,
	AMI_7a_Measure_Score string,
	AMI_8a_Performance_Rate string,
	AMI_8a_Achievement_Points string,
	AMI_8a_Improvement_Points string,
	AMI_8a_Measure_Score string,
	AMI_Condition_Procedure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_hai_05_28_2015;
CREATE EXTERNAL TABLE hvbp_hai_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	Zip_Code string,
	County_Name string,
	SCIP_Inf_1_Performance_Rate string,
	SCIP_Inf_1_Achievement_Points string,
	SCIP_Inf_1_Improvement_Points string,
	SCIP_Inf_1_Measure_Score string,
	SCIP_Inf_2_Performance_Rate string,
	SCIP_Inf_2_Achievement_Points string,
	SCIP_Inf_2_Improvement_Points string,
	SCIP_Inf_2_Measure_Score string,
	SCIP_Inf_3_Performance_Rate string,
	SCIP_Inf_3_Achievement_Points string,
	SCIP_Inf_3_Improvement_Points string,
	SCIP_Inf_3_Measure_Score string,
	SCIP_Inf_4_Performance_Rate string,
	SCIP_Inf_4_Achievement_Points string,
	SCIP_Inf_4_Improvement_Points string,
	SCIP_Inf_4_Measure_Score string,
	SCIP_Inf_9_Performance_Rate string,
	SCIP_Inf_9_Achievement_Points string,
	SCIP_Inf_9_Improvement_Points string,
	SCIP_Inf_9_Measure_Score string,
	HAI_Condition_Procedure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_hcahps_05_28_2015;
CREATE EXTERNAL TABLE hvbp_hcahps_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	Communication_with_Nurses_Achievement_Points string,
	Communication_with_Nurses_Improvement_Points string,
	Communication_with_Nurses_Dimension_Score string,
	Communication_with_Doctors_Achievement_Points string,
	Communication_with_Doctors_Improvement_Points string,
	Communication_with_Doctors_Dimension_Score string,
	Responsiveness_of_Hospital_Staff_Achievement_Points string,
	Responsiveness_of_Hospital_Staff_Improvement_Points string,
	Responsiveness_of_Hospital_Staff_Dimension_Score string,
	Pain_Management_Achievement_Points string,
	Pain_Management_Improvement_Points string,
	Pain_Management_Dimension_Score string,
	Communication_about_Medicines_Achievement_Points string,
	Communication_about_Medicines_Improvement_Points string,
	Communication_about_Medicines_Dimension_Score string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points string,
	Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score string,
	Discharge_Information_Achievement_Points string,
	Discharge_Information_Improvement_Points string,
	Discharge_Information_Dimension_Score string,
	Overall_Rating_of_Hospital_Achievement_Points string,
	Overall_Rating_of_Hospital_Improvement_Points string,
	Overall_Rating_of_Hospital_Dimension_Score string,
	HCAHPS_Base_Score string,
	HCAHPS_Consistency_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_hf_05_28_2015;
CREATE EXTERNAL TABLE hvbp_hf_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	HF_1_Performance_Rate string,
	HF_1_Achievement_Points string,
	HF_1_Improvement_Points string,
	HF_1_Measure_Score string,
	HF_Condition_Procedure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_outcome_05_18_2015;
CREATE EXTERNAL TABLE hvbp_outcome_05_18_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	MORT_30_AMI_Performance_Rate string,
	MORT_30_AMI_Achievement_Points string,
	MORT_30_AMI_Improvement_Points string,
	MORT_30_AMI_Measure_Score string,
	MORT_30_HF_Performance_Rate string,
	MORT_30_HF_Achievement_Points string,
	MORT_30_HF_Improvement_Points string,
	MORT_30_HF_Measure_Score string,
	MORT_30_PN_Performance_Rate string,
	MORT_30_PN_Achievement_Points string,
	MORT_30_PN_Improvement_Points string,
	MORT_30_PN_Measure_Score string,
	PSI_90_Performance_Rate string,
	PSI_90_Achievement_Points string,
	PSI_90_Improvement_Points string,
	PSI_90_Measure_Score string,
	HAI_1_Performance_Rate string,
	HAI_1_Achievement_Points string,
	HAI_1_Improvement_Points string,
	HAI_1_Measure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_pn_05_28_2015;
CREATE EXTERNAL TABLE hvbp_pn_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	PN_3b_Performance_Rate string,
	PN_3b_Achievement_Points string,
	PN_3b_Improvement_Points string,
	PN_3b_Measure_Score string,
	PN_6_Performance_Rate string,
	PN_6_Achievement_Points string,
	PN_6_Improvement_Points string,
	PN_6_Measure_Score string,
	PN_Condition_Procedure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_quarters;
CREATE EXTERNAL TABLE hvbp_quarters
(
	Measure_ID string,
	Measure_Description string,
	Performance_Period string,
	Baseline_Period string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_scip_05_28_2015;
CREATE EXTERNAL TABLE hvbp_scip_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	ZIP_Code string,
	County_Name string,
	SCIP_Card_2_Performance_Rate string,
	SCIP_Card_2_Achievement_Points string,
	SCIP_Card_2_Improvement_Points string,
	SCIP_Card_2_Measure_Score string,
	SCIP_VTE_2_Performance_Rate string,
	SCIP_VTE_2_Achievement_Points string,
	SCIP_VTE_2_Improvement_Points string,
	SCIP_VTE_2_Measure_Score string,
	SCIP_Condition_Procedure_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




DROP TABLE IF EXISTS hvbp_tps_05_28_2015;
CREATE EXTERNAL TABLE hvbp_tps_05_28_2015
(
	Provider_Number string,
	Hospital_Name string,
	Address string,
	City string,
	State string,
	Zip_Code string,
	County_Name string,
	Unweighted_Normalized_Clinical_Process_of_Care_Domain_Score string,
	Weighted_Clinical_Process_of_Care_Domain_Score string,
	Unweighted_Patient_Experience_of_Care_Domain_Score string,
	Weighted_Patient_Experience_of_Care_Domain_Score string,
	Unweighted_Normalized_Outcome_Domain_Score string,
	Weighted_Outcome_Domain_Score string,
	Unweighted_Normalized_Efficiency_Domain_Score string,
	Weighted_Efficiency_Domain_Score string,
	Total_Performance_Score string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES(
"separatorChar"=",",
"quoteChar"='"',
"escapeChar"='\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/exercise_1';




