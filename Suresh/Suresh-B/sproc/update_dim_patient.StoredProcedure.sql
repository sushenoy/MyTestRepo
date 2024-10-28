CREATE OR REPLACE PROCEDURE purgo_ai_ls.update_dim_patient(p_patientid integer, p_patientname character varying(256), p_dateofbirth date, p_gender character varying(256), p_contactinformation character varying(256), p_medicalhistory character varying(256))
 LANGUAGE plpgsql
AS $$
BEGIN
    -- Check if the record already exists and is current
    IF EXISTS (
        SELECT 1
        FROM purgo_ai_ls.dim_patient
        WHERE patientid = p_patientid
          AND is_current = TRUE
    ) THEN
        -- Update the existing record to set it as not current and set the end_date
        UPDATE purgo_ai_ls.dim_patient
        SET end_date = CURRENT_DATE,
            is_current = FALSE
        WHERE patientid = p_patientid
          AND is_current = TRUE;
    END IF;

    -- Insert the new record
    INSERT INTO purgo_ai_ls.dim_patient (
        patientid,
        patientname,
        dateofbirth,
        gender,
        contactinformation,
        medicalhistory,
        start_date,
        end_date,
        is_current
    ) VALUES (
        p_patientid,
        p_patientname,
        p_dateofbirth,
        p_gender,
        p_contactinformation,
        p_medicalhistory,
        CURRENT_DATE,
        NULL,
        TRUE
    );
END;
$$
