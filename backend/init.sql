CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(100)
);

CREATE TABLE InvoiceItems (
    ItemID INT PRIMARY KEY IDENTITY(1,1),
    InvoiceID INT,
    Name VARCHAR(100),
    Price DECIMAL(10,2),
    FOREIGN KEY (InvoiceID) REFERENCES Invoices(InvoiceID)
);

INSERT INTO Invoices (CustomerName) VALUES ('John Doe');
INSERT INTO InvoiceItems (InvoiceID, Name, Price) VALUES (1, 'Widget A', 19.99);