INSERT INTO Client (
    Client_ID,
    Client_Name,
    Phone,
    Email,
    Address
)
VALUES (
    1,
    'ABC Construction Ltd',
    '+250788123456',
    'abc@email.com',
    'Kigali'
);

INSERT INTO Supplier (
    Supplier_ID,
    Supplier_Name,
    Phone,
    Email,
    Address
)
VALUES (
    1,
    'Rwanda Building Supplies',
    '+250788654321',
    'supplier@email.com',
    'Kigali'
);

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
    1,
    1,
    'Residential Building',
    DATE '2026-07-10',
    DATE '2027-01-10',
    'In Progress',
    50000000
);

INSERT INTO Engineer (
    Engineer_ID,
    Project_ID,
    Engineer_Name,
    Phone,
    Specialization
)
VALUES (
    1,
    1,
    'John Mwangi',
    '+250788111111',
    'Civil Engineer'
);

INSERT INTO Worker (
    Worker_ID,
    Project_ID,
    Worker_Name,
    Phone,
    Job_Title
)
VALUES (
    1,
    1,
    'Eric Niyonzima',
    '+250788222222',
    'Site Worker'
);

INSERT INTO Material (
    Material_ID,
    Project_ID,
    Supplier_ID,
    Material_Name,
    Quantity,
    Unit_Price
)
VALUES (
    1,
    1,
    1,
    'Cement',
    500,
    12000
);

INSERT INTO Equipment (
    Equipment_ID,
    Project_ID,
    Equipment_Name,
    Available_Quantity,
    Status
)
VALUES (
    1,
    1,
    'Excavator',
    2,
    'Available'
);

INSERT INTO Payment (
    Payment_ID,
    Project_ID,
    Payment_Date,
    Amount,
    Payment_Method
)
VALUES (
    1,
    1,
    DATE '2026-07-10',
    25000000,
    'Bank Transfer'
);

INSERT INTO Public_Holidays (
    Holiday_Date,
    Holiday_Name
)
VALUES (
    DATE '2026-12-25',
    'Christmas Day'
);

COMMIT;

