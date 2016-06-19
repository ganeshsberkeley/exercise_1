DROP TABLE IF EXISTS new_hvbp_hcahps_05_28_2015_table ;
CREATE TABLE new_hvbp_hcahps_05_28_2015_table AS 
	SELECT 
		Hospital_name,
		State,
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

DROP TABLE IF EXISTS states_table ;
CREATE TABLE states_table AS
	select State
	FROM new_hvbp_hcahps_05_28_2015_table 
	WHERE  State != "State"
;

SELECT State, count(*) from states_table group by State order by count(State) desc LIMIT 10; 

