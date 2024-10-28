create view "view_fact_patienttreatment" AS 
 SELECT fpt.treatmenteventid, dp.patientid, dp.patientname, dp.dateofbirth, dp.gender, dp.contactinformation, dp.medicalhistory, dc.clinicianid, dc.clinicianname, dc.specialization, dc.contactinformation AS cliniciancontactinformation, dt.treatmentid, dt.treatmentname, dt.treatmentdescription, dt.treatmenttype, dd.diagnosisid, dd.diagnosisname, dd.diagnosisdescription, dd.icdcode, dtime.timeid, dtime.date AS treatmentdate, dtime.dayofweek, dtime."month", dtime."year", dtime.quarter, dl.locationid, dl.locationname, dl.address, dl.city, dl.state, dl.country, da.anchorid, da.anchorname, da.anchordescription, da.anchortype, fpt.treatmentdate AS treatmenteventdate, fpt.treatmentoutcome, fpt.treatmentcost, fpt.treatmentduration
   FROM purgo_ai_ls.fact_patienttreatment fpt
   JOIN purgo_ai_ls.dim_patient dp ON fpt.patientid = dp.patientid
   JOIN purgo_ai_ls.dim_clinician dc ON fpt.clinicianid = dc.clinicianid
   JOIN purgo_ai_ls.dim_treatment dt ON fpt.treatmentid = dt.treatmentid
   JOIN purgo_ai_ls.dim_diagnosis dd ON fpt.diagnosisid = dd.diagnosisid
   JOIN purgo_ai_ls.dim_time dtime ON fpt.timeid = dtime.timeid
   JOIN purgo_ai_ls.dim_location dl ON fpt.locationid = dl.locationid
   JOIN purgo_ai_ls.dim_anchor da ON fpt.anchorid = da.anchorid