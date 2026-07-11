CREATE OR REPLACE PROCEDURE Add_Project (
    p_Project_ID   IN NUMBER,
    p_Client_ID    IN NUMBER,
    p_Project_Name IN VARCHAR2,
    p_Start_Date   IN DATE,
    p_End_Date     IN DATE,
    p_Status       IN VARCHAR2,
    p_Budget       IN NUMBER
)
AS
BEGIN
    INSERT INTO Project (
        Project_ID,
        Client_ID,
        Project_Name,
        Start_Date,
        End_Date,
        Status,
        Budget
    )
    VALUES (
        p_Project_ID,
        p_Client_ID,
        p_Project_Name,
        p_Start_Date,
        p_End_Date,
        p_Status,
        p_Budget
    );

    COMMIT;

EXCEPTION
    WHEN DUP_VAL_ON_INDEX THEN
        DBMS_OUTPUT.PUT_LINE('Error: Project ID already exists.');

    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/