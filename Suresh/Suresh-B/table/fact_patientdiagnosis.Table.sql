
CREATE TABLE purgo_ai_ls.fact_patientdiagnosis (
	diagnosiseventid INTEGER, 
	patientid INTEGER, 
	clinicianid INTEGER, 
	diagnosisid INTEGER, 
	timeid INTEGER, 
	locationid INTEGER, 
	anchorid INTEGER, 
	diagnosisdate DATE, 
	diagnosisoutcome VARCHAR(100), 
	diagnosiscost NUMERIC(10, 2)
)

