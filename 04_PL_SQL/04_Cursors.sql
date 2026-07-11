SET SERVEROUTPUT ON;

DECLARE
    CURSOR project_cursor IS
        SELECT Project_ID, Project_Name, Status
        FROM Project;

    v_Project_ID   Project.Project_ID%TYPE;
    v_Project_Name Project.Project_Name%TYPE;
    v_Status       Project.Status%TYPE;

BEGIN
    OPEN project_cursor;

    LOOP
        FETCH project_cursor
        INTO v_Project_ID, v_Project_Name, v_Status;

        EXIT WHEN project_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE(
            'Project ID: ' || v_Project_ID ||
            ' | Name: ' || v_Project_Name ||
            ' | Status: ' || v_Status
        );
    END LOOP;

    CLOSE project_cursor;
END;
/