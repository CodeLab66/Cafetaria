-- Active: 1731223117510@@127.0.0.1@3306@cafetaria
CREATE DATABASE cafetaria
    DEFAULT CHARACTER SET = 'utf8mb4';

USE cafetaria;

CREATE TABLE User (
    UserID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50) UNIQUE,
    Name VARCHAR(100),
    PhoneNumber VARCHAR(15),
    Email VARCHAR(100),
    Gender VARCHAR(10),
    Address VARCHAR(255),
    Password VARCHAR(50)
);

CREATE TABLE Customer (
    UserName VARCHAR(50),
    NumberOrders INT,
    PRIMARY KEY (UserName),
    FOREIGN KEY (UserName) REFERENCES User(UserName) ON DELETE CASCADE
);

CREATE TABLE Branch (
    BranchID INT PRIMARY KEY AUTO_INCREMENT,
    BranchName VARCHAR(100),
    BranchLocation VARCHAR(100),
    BranchContact VARCHAR(15)
);

CREATE TABLE Employee (
    EmployeeID VARCHAR(50) PRIMARY KEY NOT NULL,
    UserName VARCHAR(50), 
    BranchID INT,
    Designation VARCHAR(50),
    HireDate DATE,
    Salary DECIMAL(10, 2),
    FOREIGN KEY (UserName) REFERENCES User(UserName) ON DELETE CASCADE,
    FOREIGN KEY (BranchID) REFERENCES Branch(BranchID)
);


CREATE TABLE Menu (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    Category VARCHAR(50),
    Price DECIMAL(5, 2),
    AvailabilityStatus VARCHAR(10)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    UserName VARCHAR(50),
    EmployeeID VARCHAR(50),
    BranchID INT,
    OrderDate DATE,
    OrderTime TIME,
    FOREIGN KEY (UserName) REFERENCES Customer(UserName),
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
    UserName VARCHAR(50),
    OrderID INT,
    Rating INT CHECK (Rating >= 1 AND Rating <= 5),
    Comment TEXT,
    FOREIGN KEY (UserName) REFERENCES Customer(UserName),
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
