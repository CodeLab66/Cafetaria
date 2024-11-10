-- Active: 1731223117510@@127.0.0.1@3306@cafetaria
CREATE DATABASE cafetaria
    DEFAULT CHARACTER SET = 'utf8mb4';

USE cafetaria;

CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Password VARCHAR(50)
);

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY,
    NumberOrders INT,
    FOREIGN KEY (CustomerID) REFERENCES User(UserID)
);

CREATE TABLE Branch (
    BranchID INT PRIMARY KEY AUTO_INCREMENT,
    BranchName VARCHAR(100),
    BranchLocation VARCHAR(100),
    BranchContact VARCHAR(15)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    BranchID INT,
    Designation VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Menu (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    Category VARCHAR(50),
    Size VARCHAR(20),
    Price DECIMAL(5, 2),
    AvailabilityStatus VARCHAR(10)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    EmployeeID INT,
    BranchID INT,
    OrderDate DATE,
    OrderTime TIME,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);

CREATE TABLE Transaction (
    TransactionID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    PaymentMethod VARCHAR(20),
    PaidAmount DECIMAL(5, 2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

CREATE TABLE Review (
    ReviewID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

CREATE TABLE Delivery (
    DeliveryID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    BranchID INT,
    DeliveryAddress VARCHAR(255),
    DeliveryStatus VARCHAR(20),
    DeliveryTime TIME,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);
