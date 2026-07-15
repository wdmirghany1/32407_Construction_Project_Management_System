# 32407_MOHANAD_Construction_Project_Management_System
Step 1: Create the Oracle User
Open Oracle SQL Developer and connect as a privileged user (e.g., SYSTEM).
Run the script:
03_SQL_Scripts/01_Create_User.sql
Connect using the credentials defined in the user creation script.
Step 2: Create Database Tables

Run:

03_SQL_Scripts/02_Create_Tables.sql

This script creates all project tables, including:

Client
Project
Engineer
Worker
Supplier
Material
Equipment
Payment
Public_Holidays
Audit_Log
Step 3: Insert Sample Data

Run:

03_SQL_Scripts/03_Insert_Data.sql

to populate the database with sample records.

Step 4: Execute SQL Queries

Run:

03_SQL_Scripts/04_SQL_Queries.sql

This script demonstrates:

JOIN operations
Aggregate functions
Filtering
GROUP BY
ORDER BY
Step 5: Create PL/SQL Objects

Run the following scripts in order:

04_PL_SQL/01_Procedures.sql

Creates the Add_Project procedure.

04_PL_SQL/02_Functions.sql

Creates the Get_Total_Payments function.

04_PL_SQL/03_Packages.sql

Creates the Project_Package (Specification & Body).

04_PL_SQL/04_Cursors.sql

Demonstrates explicit cursor implementation.

Step 6: Create Database Triggers

Run the following scripts:

05_Triggers/01_Simple_Trigger.sql
05_Triggers/02_Compound_Trigger.sql
05_Triggers/03_Security_Trigger.sql

These scripts create:

Simple Trigger
Compound Trigger
Security Trigger
Step 7: Configure the Audit System

Run:

06_Audit/01_Audit_Table.sql

and

06_Audit/02_Audit_Trigger.sql

This creates the audit table and enables automatic activity logging.

Step 8: Test the System
Test the Stored Procedure
EXEC Add_Project(
    2,
    1,
    'Test Project',
    SYSDATE,
    SYSDATE + 180,
    'In Progress',
    30000000
);
Test the Function
SELECT Get_Total_Payments(1)
FROM DUAL;
Test the Cursor

Execute:

04_PL_SQL/04_Cursors.sql

with:

SET SERVEROUTPUT ON;
Test the Security Trigger

Attempt an INSERT, UPDATE, or DELETE operation according to the implemented business rule to verify that the trigger blocks unauthorized modifications.

Step 9: Open the Power BI Dashboard

Open the following file using Microsoft Power BI Desktop:

08_PowerBI/Construction_Dashboard.pbix

Explore the dashboard to view KPIs, charts, and business insights.

SQL Features
Joins

The project implements several INNER JOIN queries to retrieve related information across multiple tables.

Examples include:

Project with Client
Engineer with Project
Material with Supplier

Example:

SELECT p.Project_Name,
       c.Client_Name
FROM Project p
JOIN Client c
ON p.Client_ID = c.Client_ID;
Aggregate Functions

The project uses aggregate functions to summarize data.

Implemented functions include:

SUM()
COUNT()

Examples:

Total project payments
Number of projects
Filtering

Filtering is implemented using the WHERE clause to retrieve specific records such as:

Projects currently in progress
Materials supplied by a specific supplier
GROUP BY

Used to summarize payment totals by project and generate analytical reports.

ORDER BY

Used to sort query results in ascending or descending order for better readability.
