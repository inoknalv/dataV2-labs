CREATE TABLE Cars (
    VIN varchar(255) NOT NULL,
    Manufacturer varchar(255) NOT NULL,
    Model varchar(255) NOT NULL,
    Year int NOT NULL,
    Color varchar(255),
    PRIMARY KEY (VIN),
    UNIQUE (VIN)
);

CREATE TABLE Customers (
    CustomerID int NOT NULL,
    Name varchar(255) NOT NULL,
    Phone varchar(255),
    Email varchar(255),
    Address varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    State varchar(255) NOT NULL,
    Country varchar(255) NOT NULL,
    Zip varchar(255) NOT NULL,
    PRIMARY KEY (CustomerID),
    UNIQUE (CustomerID)
);

CREATE TABLE Salespersons (
    StaffID int NOT NULL,
    Name varchar(255) NOT NULL,
    Store varchar(255) NOT NULL,
    PRIMARY KEY (StaffID),
    UNIQUE (StaffID)
);

CREATE TABLE Invoices (
    InvoiceNumber int NOT NULL,
    Date date NOT NULL,
    Car int,
    Customer int,
    Salesperson int,
    PRIMARY KEY (InvoiceNumber),
    UNIQUE (InvoiceNumber)
);
