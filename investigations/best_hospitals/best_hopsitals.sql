DROP TABLE IF EXISTS new_hvbp_hcahps_05_28_2015_table ;
CREATE TABLE new_hvbp_hcahps_05_28_2015_table AS 
	SELECT 
		Hospital_name,
		Communication_with_Nurses_Achievement_Points,
		Communication_with_Nurses_Improvement_Points,
		Communication_with_Nurses_Dimension_Score,
        	Communication_with_Doctors_Achievement_Points,
        	Communication_with_Doctors_Improvement_Points,
        	Communication_with_Doctors_Dimension_Score,
        	Responsiveness_of_Hospital_Staff_Achievement_Points,
        	Responsiveness_of_Hospital_Staff_Improvement_Points,
        	Responsiveness_of_Hospital_Staff_Dimension_Score,
        	Pain_Management_Achievement_Points,
        	Pain_Management_Improvement_Points,
        	Pain_Management_Dimension_Score,
        	Communication_about_Medicines_Achievement_Points,
        	Communication_about_Medicines_Improvement_Points,
        	Communication_about_Medicines_Dimension_Score,
        	Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points,
        	Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points,
        	Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score,
        	Discharge_Information_Achievement_Points,
        	Discharge_Information_Improvement_Points,
        	Discharge_Information_Dimension_Score,
        	Overall_Rating_of_Hospital_Improvement_Points,
        	Overall_Rating_of_Hospital_Dimension_Score,
		Overall_Rating_of_Hospital_Achievement_Points
	from hvbp_hcahps_05_28_2015_table 
	where 
		(Overall_Rating_of_Hospital_Achievement_Points != "Not Available") AND
		(Communication_with_Nurses_Improvement_Points != "Not Available") AND
		(Communication_with_Nurses_Dimension_Score != "Not Available") AND
		(Communication_with_Doctors_Achievement_Points != "Not Available") AND
		(Communication_with_Doctors_Improvement_Points != "Not Available") AND
		(Communication_with_Doctors_Dimension_Score != "Not Available") AND
		(Responsiveness_of_Hospital_Staff_Achievement_Points != "Not Available") AND
		(Responsiveness_of_Hospital_Staff_Improvement_Points != "Not Available") AND
		(Responsiveness_of_Hospital_Staff_Dimension_Score != "Not Available") AND
		(Pain_Management_Achievement_Points != "Not Available") AND
		(Pain_Management_Improvement_Points != "Not Available") AND
		(Pain_Management_Dimension_Score != "Not Available") AND
		(Communication_about_Medicines_Achievement_Points != "Not Available") AND
		(Communication_about_Medicines_Improvement_Points != "Not Available") AND
		(Communication_about_Medicines_Dimension_Score != "Not Available") AND
		(Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points != "Not Available") AND
		(Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points != "Not Available") AND
		(Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score != "Not Available") AND
		(Discharge_Information_Achievement_Points != "Not Available") AND
		(Discharge_Information_Improvement_Points != "Not Available") AND
		(Discharge_Information_Dimension_Score != "Not Available") AND
		(Overall_Rating_of_Hospital_Improvement_Points != "Not Available") AND
		(Overall_Rating_of_Hospital_Dimension_Score != "Not Available")
;


select * from new_hvbp_hcahps_05_28_2015_table LIMIT 10 ;

DROP TABLE IF EXISTS point_score_table ;
CREATE TABLE point_score_table AS
select                  Hospital_Name,
                        cast(split(Communication_with_Nurses_Achievement_Points, " ")[0] as int),
                        cast(split(Communication_with_Nurses_Improvement_Points, " ")[0] as int),
                        cast(split(Communication_with_Nurses_Dimension_Score, " ")[0] as int),
                        cast(split(Communication_with_Doctors_Achievement_Points, " ")[0] as int),
                        cast(split(Communication_with_Doctors_Improvement_Points, " ")[0] as int),
                        cast(split(Communication_with_Doctors_Dimension_Score, " ")[0] as int),
                        cast(split(Responsiveness_of_Hospital_Staff_Achievement_Points, " ")[0] as int),
                        cast(split(Responsiveness_of_Hospital_Staff_Improvement_Points, " ")[0] as int),
                        cast(split(Responsiveness_of_Hospital_Staff_Dimension_Score, " ")[0] as int),
                        cast(split(Pain_Management_Achievement_Points, " ")[0] as int),
                        cast(split(Pain_Management_Improvement_Points, " ")[0] as int),
                        cast(split(Pain_Management_Dimension_Score, " ")[0] as int),
                        cast(split(Communication_about_Medicines_Achievement_Points, " ")[0] as int),
                        cast(split(Communication_about_Medicines_Improvement_Points, " ")[0] as int),
                        cast(split(Communication_about_Medicines_Dimension_Score, " ")[0] as int),
                        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points, " ")[0] as int),
                        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points, " ")[0] as int),
                        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score, " ")[0] as int),
                        cast(split(Discharge_Information_Achievement_Points, " ")[0] as int),
                        cast(split(Discharge_Information_Improvement_Points, " ")[0] as int),
                        cast(split(Discharge_Information_Dimension_Score, " ")[0] as int),
                        cast(split(Overall_Rating_of_Hospital_Improvement_Points, " ")[0] as int),
                        cast(split(Overall_Rating_of_Hospital_Dimension_Score, " ")[0] as int)
from new_hvbp_hcahps_05_28_2015_table
        order by Overall_Rating_of_Hospital_Achievement_Points
desc ;

DROP TABLE IF EXISTS new_point_score_table ;
CREATE TABLE new_point_score_table AS
select  *
from hvbp_hcahps_05_28_2015_table
        where Hospital_Name != "Hospital Name"
;

DROP TABLE IF EXISTS aggregate_point_score_table ;
CREATE TABLE aggregate_point_score_table AS
select 
	Hospital_Name,
	Overall_Rating_of_Hospital_Achievement_Points,
	cast(split(Communication_with_Nurses_Improvement_Points, " ")[0] as int)+
	cast(split(Communication_with_Nurses_Dimension_Score, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Achievement_Points, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Improvement_Points, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Dimension_Score, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Achievement_Points, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Improvement_Points, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Dimension_Score, " ")[0] as int)+
        cast(split(Pain_Management_Achievement_Points, " ")[0] as int)+
        cast(split(Pain_Management_Improvement_Points, " ")[0] as int)+
        cast(split(Pain_Management_Dimension_Score, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Achievement_Points, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Improvement_Points, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Dimension_Score, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score, " ")[0] as int)+
        cast(split(Discharge_Information_Achievement_Points, " ")[0] as int)+
        cast(split(Discharge_Information_Improvement_Points, " ")[0] as int)+
        cast(split(Discharge_Information_Dimension_Score, " ")[0] as int)+
        cast(split(Overall_Rating_of_Hospital_Improvement_Points, " ")[0] as int)+
        cast(split(Overall_Rating_of_Hospital_Dimension_Score, " ")[0] as int),

	(cast(split(Communication_with_Nurses_Improvement_Points, " ")[0] as int)+
	cast(split(Communication_with_Nurses_Dimension_Score, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Achievement_Points, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Improvement_Points, " ")[0] as int)+
        cast(split(Communication_with_Doctors_Dimension_Score, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Achievement_Points, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Improvement_Points, " ")[0] as int)+
        cast(split(Responsiveness_of_Hospital_Staff_Dimension_Score, " ")[0] as int)+
        cast(split(Pain_Management_Achievement_Points, " ")[0] as int)+
        cast(split(Pain_Management_Improvement_Points, " ")[0] as int)+
        cast(split(Pain_Management_Dimension_Score, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Achievement_Points, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Improvement_Points, " ")[0] as int)+
        cast(split(Communication_about_Medicines_Dimension_Score, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Achievement_Points, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Improvement_Points, " ")[0] as int)+
        cast(split(Cleanliness_and_Quietness_of_Hospital_Environment_Dimension_Score, " ")[0] as int)+
        cast(split(Discharge_Information_Achievement_Points, " ")[0] as int)+
        cast(split(Discharge_Information_Improvement_Points, " ")[0] as int)+
        cast(split(Discharge_Information_Dimension_Score, " ")[0] as int)+
        cast(split(Overall_Rating_of_Hospital_Improvement_Points, " ")[0] as int)+
        cast(split(Overall_Rating_of_Hospital_Dimension_Score, " ")[0] as int))/22
from new_hvbp_hcahps_05_28_2015_table 
	order by Overall_Rating_of_Hospital_Achievement_Points
desc ;
	
DROP TABLE IF EXISTS new_aggregate_point_score_table ;
CREATE TABLE new_aggregate_point_score_table AS
select  *
from aggregate_point_score_table
        where Hospital_Name != "Hospital Name"
;

select * from new_aggregate_point_score_table LIMIT 10 ;

