-- Query 1
SELECT * FROM Client;

-- Query 2
SELECT
    p.Project_Name,
    c.Client_Name
FROM Project p
JOIN Client c
ON p.Client_ID = c.Client_ID;

-- Query 3
SELECT
    e.Engineer_Name,
    p.Project_Name,
    c.Client_Name
FROM Engineer e
JOIN Project p
ON e.Project_ID = p.Project_ID
JOIN Client c
ON p.Client_ID = c.Client_ID;

-- Query 4
SELECT
    m.Material_Name,
    m.Quantity,
    m.Unit_Price,
    s.Supplier_Name
FROM Material m
JOIN Supplier s
ON m.Supplier_ID = s.Supplier_ID;

-- Query 5
SELECT
    SUM(Amount) AS Total_Payments
FROM Payment;

-- Query 6
SELECT *
FROM Project
WHERE Status = 'In Progress';

-- Query 7
SELECT COUNT(*) AS Total_Projects
FROM Project;