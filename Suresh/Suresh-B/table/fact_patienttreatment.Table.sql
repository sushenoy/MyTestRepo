
CREATE TABLE purgo_ai_ls.fact_patienttreatment (
	treatmenteventid INTEGER, 
	patientid INTEGER, 
	clinicianid INTEGER, 
	treatmentid INTEGER, 
	diagnosisid INTEGER, 
	timeid INTEGER, 
	locationid INTEGER, 
	anchorid INTEGER, 
	treatmentdate DATE, 
	treatmentoutcome VARCHAR(100), 
	treatmentcost NUMERIC(10, 2), 
	treatmentduration INTEGER
)

