DROP TABLE IF EXISTS new_readmission_reduction_table ;
CREATE TABLE new_readmission_reduction_table AS 
	SELECT 
		Hospital_name,
		Provider_Number,
		State,
        	Number_of_Discharges,
        	Excess_Readmission_Ratio,
        	Predicted_Readmission_Rate,
        	Expected_Readmission_Rate,
        	Number_of_Readmissions
	from readmission_reduction_table 
	where 
		(Number_of_Discharges != "Not Available") AND
		(Excess_Readmission_Ratio != "Not Available") AND
		(Predicted_Readmission_Rate != "Not Available") AND
		(Expected_Readmission_Rate != "Not Available") AND
		(Number_of_Readmissions != "Not Available") 
;


select * from new_readmission_reduction_table LIMIT 10 ;

DROP TABLE IF EXISTS readmission_pred_expec_var ;
CREATE TABLE readmission_pred_expec_var AS
select 
	Hospital_Name,
	State,
	Predicted_Readmission_Rate,
	Expected_Readmission_Rate,
	Predicted_Readmission_Rate-Expected_Readmission_Rate
from new_readmission_reduction_table 
        where Hospital_Name != "Hospital Name"
        order by Predicted_Readmission_Rate-Expected_Readmission_Rate
desc ;

select * from readmission_pred_expec_var LIMIT 10 ;

DROP TABLE IF EXISTS readmission_pred_var ;
CREATE TABLE readmission_pred_var AS
select 
	Hospital_Name,
	State,
	Number_of_Readmissions,
	Predicted_Readmission_Rate,
	Number_of_Readmissions-Predicted_Readmission_Rate
from new_readmission_reduction_table 
        where Hospital_Name != "Hospital Name"
        order by Number_of_Readmissions-Predicted_Readmission_Rate
desc ; 
	
select * from readmission_pred_var LIMIT 10 ;

DROP TABLE IF EXISTS readmission_expec_var ;
CREATE TABLE readmission_expec_var AS
select 
	Hospital_Name,
	State,
	Number_of_Readmissions,
	Expected_Readmission_Rate,
	Number_of_Readmissions-Expected_Readmission_Rate
from new_readmission_reduction_table 
        where Hospital_Name != "Hospital Name"
        order by Number_of_Readmissions-Expected_Readmission_Rate
desc ; 

select * from readmission_expec_var LIMIT 10 ;
