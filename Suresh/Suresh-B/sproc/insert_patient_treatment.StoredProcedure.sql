CREATE OR REPLACE PROCEDURE purgo_ai_ls.insert_patient_treatment(p_treatmentdate date, p_treatmentoutcome character varying(100), p_treatmentcost numeric(10,2), p_treatmentduration integer)
 LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO purgo_ai_ls.fact_patienttreatment (
        treatmentdate,
        treatmentoutcome,
        treatmentcost,
        treatmentduration
    ) VALUES (
        p_treatmentdate,
        p_treatmentoutcome,
        p_treatmentcost,
        p_treatmentduration
    );
END;
$$
