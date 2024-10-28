CREATE OR REPLACE PROCEDURE purgo_ai_ls.update_patient_treatment(p_id integer, p_treatmentdate date, p_treatmentoutcome character varying(100), p_treatmentcost numeric(10,2), p_treatmentduration integer)
 LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE purgo_ai_ls.fact_patienttreatment
    SET
        treatmentdate = p_treatmentdate,
        treatmentoutcome = p_treatmentoutcome,
        treatmentcost = p_treatmentcost,
        treatmentduration = p_treatmentduration
    WHERE id = p_id;
END;
$$
