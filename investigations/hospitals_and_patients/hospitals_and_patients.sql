DROP TABLE IF EXISTS new_outpatient_procedures___volume_table ;
CREATE TABLE new_outpatient_procedures___volume_table AS 
	SELECT 
		Hospital_name,
		Provider_ID,
        	gastrointestinal,
        	eye,
        	nervous_system,
        	musculoskeletal,
        	skin,
		genitourinary,
		cardiovascular
	from outpatient_procedures___volume_table 
	where 
		(Hospital_Name != "Hospital_Name") AND
		(gastrointestinal != "Not Available") AND
		(eye != "Not Available") AND
		(nervous_system != "Not Available") AND
		(musculoskeletal != "Not Available") AND
		(skin != "Not Available") AND
		(genitourinary != "Not Available") AND
		(cardiovascular != "Not Available") 
	ORDER BY gastrointestinal DESC, eye DESC, nervous_system DESC, musculoskeletal DESC, skin DESC, genitourinary DESC, cardiovascular DESC
;


select * from new_outpatient_procedures___volume_table LIMIT 10 ;
