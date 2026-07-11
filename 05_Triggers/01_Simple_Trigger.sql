CREATE OR REPLACE TRIGGER TRG_PROJECT_AUDIT
AFTER INSERT ON Project
FOR EACH ROW
BEGIN
    INSERT INTO Audit_Log (
        Username,
        Action_Type,
        Table_Name,
        Action_Date
    )
    VALUES (
        USER,
        'INSERT',
        'PROJECT',
        SYSDATE
    );
END;
/