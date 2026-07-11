CREATE OR REPLACE FUNCTION Get_Total_Payments (
    p_Project_ID IN NUMBER
)
RETURN NUMBER
AS
    v_Total NUMBER;
BEGIN
    SELECT NVL(SUM(Amount),0)
    INTO v_Total
    FROM Payment
    WHERE Project_ID = p_Project_ID;

    RETURN v_Total;
END;
/