create view "view_fact_patientdiagnosis" AS 
 SELECT fpd.diagnosiseventid, dp.patientid, dp.patientname, dp.dateofbirth, dp.gender, dp.contactinformation, dp.medicalhistory, dc.clinicianid, dc.clinicianname, dc.specialization, dc.contactinformation AS cliniciancontactinformation, dd.diagnosisid, dd.diagnosisname, dd.diagnosisdescription, dd.icdcode, dtime.timeid, dtime.date AS diagnosisdate, dtime.dayofweek, dtime."month", dtime."year", dtime.quarter, dl.locationid, dl.locationname, dl.address, dl.city, dl.state, dl.country, da.anchorid, da.anchorname, da.anchordescription, da.anchortype, fpd.diagnosisdate AS diagnosiseventdate, fpd.diagnosisoutcome, fpd.diagnosiscost
   FROM purgo_ai_ls.fact_patientdiagnosis fpd
   JOIN purgo_ai_ls.dim_patient dp ON fpd.patientid = dp.patientid
   JOIN purgo_ai_ls.dim_clinician dc ON fpd.clinicianid = dc.clinicianid
   JOIN purgo_ai_ls.dim_diagnosis dd ON fpd.diagnosisid = dd.diagnosisid
   JOIN purgo_ai_ls.dim_time dtime ON fpd.timeid = dtime.timeid
   JOIN purgo_ai_ls.dim_location dl ON fpd.locationid = dl.locationid
   JOIN purgo_ai_ls.dim_anchor da ON fpd.anchorid = da.anchorid