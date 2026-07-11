CREATE OR REPLACE TRIGGER TRG_PROJECT_SECURITY
BEFORE INSERT OR UPDATE OR DELETE
ON Project
DECLARE
    v_Count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_Count
    FROM Public_Holidays
    WHERE Holiday_Date = TRUNC(SYSDATE);

    IF TO_CHAR(SYSDATE, 'DY', 'NLS_DATE_LANGUAGE=ENGLISH')
       IN ('MON','TUE','WED','THU','FRI')
       OR v_Count > 0 THEN

        RAISE_APPLICATION_ERROR(
            -20001,
            'Database modifications are not allowed today.'
        );

    END IF;
END;
/