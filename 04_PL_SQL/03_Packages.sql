CREATE OR REPLACE PACKAGE Project_Package AS

    PROCEDURE Add_Project(
        p_Project_ID   IN NUMBER,
        p_Client_ID    IN NUMBER,
        p_Project_Name IN VARCHAR2,
        p_Start_Date   IN DATE,
        p_End_Date     IN DATE,
        p_Status       IN VARCHAR2,
        p_Budget       IN NUMBER
    );

    FUNCTION Get_Total_Payments(
        p_Project_ID IN NUMBER
    ) RETURN NUMBER;

END Project_Package;
/

CREATE OR REPLACE PACKAGE BODY Project_Package AS

    PROCEDURE Add_Project(
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
    END Add_Project;

    FUNCTION Get_Total_Payments(
        p_Project_ID IN NUMBER
    ) RETURN NUMBER
    AS
        v_Total NUMBER;
    BEGIN
        SELECT NVL(SUM(Amount),0)
        INTO v_Total
        FROM Payment
        WHERE Project_ID = p_Project_ID;

        RETURN v_Total;
    END Get_Total_Payments;

END Project_Package;
/