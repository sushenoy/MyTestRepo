CREATE OR REPLACE PROCEDURE purgo_ai_ls.delete_patient_treatment(p_id integer)
 LANGUAGE plpgsql
AS $$
BEGIN
    DELETE FROM purgo_ai_ls.fact_patienttreatment
    WHERE id = p_id;
END;
$$
