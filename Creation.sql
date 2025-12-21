CREATE TABLE Restaurant (
    Restaurant_ID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Location VARCHAR(100) NOT NULL
);

CREATE TABLE Customer (
    C_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Address VARCHAR(150),
    Restaurant_ID INT,
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Menu (
    M_ID INT PRIMARY KEY,
    Meal_Name VARCHAR(100),
    Price DECIMAL(6,2),
    Restaurant_ID INT,
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Waiter (
    W_ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Shift VARCHAR(50),
    Salary DECIMAL(8,2),
    Restaurant_ID INT,
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Orders (
    O_ID INT PRIMARY KEY,
    Order_Date DATE,
    Status VARCHAR(50),
    Amount DECIMAL(8,2),
    C_ID INT,
    Restaurant_ID INT,
    FOREIGN KEY (C_ID) REFERENCES Customer(C_ID),
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Reservation (
    Reservation_ID INT PRIMARY KEY,
    Reservation_Date DATE,
    C_ID INT,
    Restaurant_ID INT,
    FOREIGN KEY (C_ID) REFERENCES Customer(C_ID),
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);

CREATE TABLE Delivery (
    D_ID INT PRIMARY KEY,
    Delivery_Date DATE,
    O_ID INT,
    FOREIGN KEY (O_ID) REFERENCES Orders(O_ID)
);

CREATE TABLE Offers (
    Offer_ID INT PRIMARY KEY,
    Description VARCHAR(150),
    Discount DECIMAL(4,2),
    Restaurant_ID INT,
    FOREIGN KEY (Restaurant_ID) REFERENCES Restaurant(Restaurant_ID)
);
