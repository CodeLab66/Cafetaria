-- Create Database and Use it
CREATE DATABASE IF NOT EXISTS cafetaria DEFAULT CHARACTER SET = 'utf8mb4';
USE cafetaria;


-- Insert Branches
INSERT INTO Branch (BranchName, BranchLocation, BranchContact)
VALUES ('Gulberg Branch', 'Lahore - Gulberg', '03005555555'),
       ('DHA Branch', 'Lahore - DHA', '03006666666'),
       ('Model Town Branch', 'Lahore - Model Town', '03007777777'),
       ('F-7 Branch', 'Islamabad - F-7', '03118888888');

-- Insert Users and Customers
INSERT INTO User (UserName, Name, PhoneNumber, Email, Gender, Address, Password)
VALUES ('ali_khan', 'Ali Khan', '03011223344', 'ali.khan@example.com', 'Male', 'Lahore - DHA', 'password1'),
       ('ayesha_zafar', 'Ayesha Zafar', '03122334455', 'ayesha.zafar@example.com', 'Female', 'Islamabad - F-7', 'password2'),
       ('sara_ali', 'Sara Ali', '03033334444', 'sara.ali@example.com', 'Female', 'Lahore - Gulberg', 'password3'),
       ('usman_tariq', 'Usman Tariq', '03215555666', 'usman.tariq@example.com', 'Male', 'Lahore - Model Town', 'password4'),
       ('B1B1', 'Ali Sher', '03222233344', 'ali.sher@example.com', 'Male', 'Lahore - Gulberg', 'password5'),
       ('Ch1B1', 'Ayesha Sher', '03122377775', 'ayesha.sher@example', 'Female', 'Lahore - Gulberg', 'password6'),
       ('Ca1B1', 'Sara Sher', '03033339999', 'sara.sher@example.com', 'Female', 'Lahore - Gulberg', 'password7'),
       ('MB1', 'Ahmed Khan', '03225545866', 'ahmed.khan@example.com', 'Male', 'Lahore - Gulberg', 'password8'),
       ('R1B1', 'Ali Yasir', '03215975636', 'ali.yasir@example.com', 'Male', 'Lahore - Gulberg', 'password9'),
       ('B1B2', 'Meer Khalid', '03222233344', 'meer.khalid@example.com', 'Male', 'Lahore - DHA', 'password10'),
       ('Ch1B2', 'Minahil Khilji', '03122377775', 'minahil.khilji@example', 'Female', 'Lahore - DHA', 'password11'),
       ('Ca1B2', 'Sara Naqvi', '03033339999', 'sara.naqvi@example.com', 'Female', 'Lahore - DHA', 'password12'),
       ('MB2', 'junejo Hamza', '03225545866', 'junejo.hamza@example.com', 'Male', 'Lahore - DHA', 'password13'),
       ('R1B2', 'Rana Sadaqat', '03215975636', 'rana.sadaqat@example.com', 'Male', 'Lahore - DHA', 'password14'),
       ('B1B3', 'Sharafat Ali', '03222233344', 'sharafat.ali@example.com', 'Male', 'Lahore - Model Town', 'password15'),
       ('Ch1B3', 'Maryam Shareef', '03122377775', 'maryam.shareef@example', 'Female', 'Lahore - Model Town', 'password16'),
       ('Ca1B3', 'Navida Zulqarnain', '03033339999', 'navida.zulqarnain@example.com', 'Female', 'Lahore - Model Town', 'password17'),
       ('MB3', 'Asim Muneer', '03225545866', 'asim.muneer@example.com', 'Male', 'Lahore - Model Town', 'password18'),
       ('R1B3', 'Shebaz Shareef', '03215975636', 'shebaz.shareef@example.com', 'Male', 'Lahore - Model Town', 'password19'),
       ('B1B4', 'Nawaz Shareef', '03222233344', 'nawaz.shareef@example', 'Male', 'Lahore - F-7', 'password20'),
       ('Ch1B4', 'Saqeena Makhlooq', '03122377775', 'saqeena.makhlooq@example', 'Female', 'Lahore - F-7', 'password21'),
       ('Ca1B4', 'Yo Yong', '03033339999', 'yo.yong@example', 'Female', 'Lahore - F-7', 'password22'),
       ('MB4', 'Abdul Rehman', '03225545866', 'abdul.rehman@example.com', 'Male', 'Lahore - F-7', 'password23'),
       ('R1B4', 'John Doe', '03215975636', 'john.doe@example', 'Male', 'Lahore - F-7', 'password24');


INSERT INTO Customer (UserName, NumberOrders)
VALUES ('ali_khan', 1),
       ('ayesha_zafar', 1),
       ('sara_ali', 1),
       ('usman_tariq', 1);

-- Insert Employees
INSERT INTO Employee (EmployeeID,UserName ,BranchID, Designation, HireDate, Salary)
VALUES ('B1B1','B1B1', 1, 'Barista', '2022-03-01', 35000.00),
       ('Ch1B1','Ch1B1', 1, 'Chef', '2021-08-12', 45000.00),
       ('Ca1B1','Ca1B1', 1, 'Cashier', '2023-01-15', 30000.00),
       ('MB1','MB1', 1, 'Manager', '2021-05-10', 60000.00),
       ('R1B1','R1B1', 1, 'Rider', '2022-10-20', 25000.00),
       ('B1B2','B1B2', 2, 'Barista', '2022-03-01', 35000.00),
       ('Ch1B2','Ch1B2', 2, 'Chef', '2021-08-12', 45000.00),
       ('Ca1B2','Ca1B2', 2, 'Cashier', '2023-01-15', 30000.00),
       ('MB2','MB2', 2, 'Manager', '2021-05-10', 60000.00),
       ('R1B2','R1B2', 2, 'Rider', '2022-10-20', 25000.00),
       ('B1B3','B1B3', 3, 'Barista', '2022-03-01', 35000.00),
       ('Ch1B3','Ch1B3', 3, 'Chef', '2021-08-12', 45000.00),
       ('Ca1B3','Ca1B3', 3, 'Cashier', '2023-01-15', 30000.00),
       ('MB3','MB3', 3, 'Manager', '2021-05-10', 60000.00),
       ('R1B3','R1B3', 3, 'Rider', '2022-10-20', 25000.00),
       ('B1B4','B1B4', 4, 'Barista', '2022-03-01', 35000.00),
       ('Ch1B4','Ch1B4', 4, 'Chef', '2021-08-12', 45000.00),
       ('Ca1B4','Ca1B4', 4, 'Cashier', '2023-01-15', 30000.00),
       ('MB4','MB4', 4, 'Manager', '2021-05-10', 60000.00),
       ('R1B4','R1B4', 4, 'Rider', '2022-10-20', 25000.00);

-- Insert Menu Items
-- Coffee
INSERT INTO Menu (Category, Price, AvailabilityStatus)
VALUES ('Blonde Vanilla Latte', 350.00, 'Available'),
       ('Cafe au lait', 300.00, 'Available'),
       ('Caffe Americano', 400.00, 'Available'),
       ('Caffe Misto', 320.00, 'Available'),
       ('Caffe Mocha', 420.00, 'Available'),
       ('Cappuccino', 350.00, 'Available'),
       ('Classic Signature Chocolate', 380.00, 'Available'),
       ('Golden Turmeric Latte', 360.00, 'Available'),
       ('Honey Almond', 390.00, 'Available'),
       ('Iced Brown Sugar Oat', 400.00, 'Available'),
       ('Iced Mocha', 410.00, 'Available'),
       ('Latte Macchiato', 370.00, 'Available'),
       ('Lavender Latte', 360.00, 'Available'),
       ('Signature Chocolate Salted Caramel', 380.00, 'Available'),
       ('Signature Chocolate Toasted Almond', 390.00, 'Available'),
       ('Signature Chocolate Toasted Marshmallow', 420.00, 'Available'),
       ('Sparkling Mint', 350.00, 'Available'),
       ('Spiced Espresso', 370.00, 'Available'),
       ('Strawberry Latte', 360.00, 'Available'),
       ('Vanilla Latte', 390.00, 'Available');

-- Tea
INSERT INTO Menu (Category, Price, AvailabilityStatus)
VALUES ('Chai Latte', 320.00, 'Available'),
       ('Chai Tea', 300.00, 'Available'),
       ('Chai Tea Latte', 340.00, 'Available'),
       ('Iced Chai Latte', 350.00, 'Available'),
       ('Iced Chai Tea Latte', 330.00, 'Available'),
       ('Iced Chai Tea Latte with Vanilla Ice Cream', 370.00, 'Available'),
       ('Iced Chai Tea Oat Latte', 360.00, 'Available');

-- Brewages
INSERT INTO Menu (Category, Price, AvailabilityStatus)
VALUES ('Frozen Tropical Citrus Strawberry Energy Drink', 300.00, 'Available'),
       ('Melon Burst Energy Drink', 330.00, 'Available'),
       ('Mango Dragon fruit Lemonade Refreshers', 320.00, 'Available'),
       ('Pineapple Passion fruit Refreshers Lemonade', 340.00, 'Available'),
       ('Strawberry Acai Lemonade Refreshers', 310.00, 'Available'),
       ('Frozen Mango Dragon fruit Refresher Lemonade', 340.00, 'Available'),
       ('Frozen Pineapple Passion fruit Refresher Lemonade', 330.00, 'Available'),
       ('Frozen Strawberry Acai Refresher Lemonade', 350.00, 'Available'),
       ('Tropical Citrus Energy Drink', 320.00, 'Available');

-- Frappuccino
INSERT INTO Menu (Category, Price, AvailabilityStatus)
VALUES ('Caramel Brule Frappuccino', 400.00, 'Available'),
       ('Chai Tea Cream Frappuccino', 420.00, 'Available'),
       ('Java Chip Frappuccino', 450.00, 'Available'),
       ('Matcha Green Tea Frappuccino', 460.00, 'Available'),
       ('Mocha Cookie Crumble Frappuccino', 470.00, 'Available'),
       ('Peppermint White Chocolate Creme Frappuccino', 430.00, 'Available'),
       ('Peppermint White Chocolate Mocha Frappuccino', 440.00, 'Available'),
       ('Strawberry Frappuccino', 410.00, 'Available'),
       ('White Chocolate Creme Frappuccino', 450.00, 'Available');

-- Other Food Items
INSERT INTO Menu (Category, Price, AvailabilityStatus)
VALUES ('Beef Burger', 550.00, 'Available'),
       ('Krunch Burger', 400.00, 'Available'),
       ('Grilled Fillet Burger', 600.00, 'Available'),
       ('Cheese Vegetable Pizza', 800.00, 'Available'),
       ('Mind Margarita Pizza', 700.00, 'Available'),
       ('Pepperoni Pizza', 850.00, 'Available'),
       ('Macaroni Pasta', 500.00, 'Available'),
       ('Alfredo Pasta', 600.00, 'Available'),
       ('French Fries', 200.00, 'Available');


-- Sample Orders
INSERT INTO Orders (UserName, EmployeeID, BranchID, OrderDate, OrderTime)
VALUES ('ali_khan', 'Ca1B2', 1, '2024-11-10', '10:30:00'),
       ('ayesha_zafar', 'Ca1B4', 2, '2024-11-11', '11:45:00'),
       ('sara_ali', 'Ca1B1', 3, '2024-11-12', '13:20:00'),
       ('usman_tariq', 'Ca1B3', 4, '2024-11-13', '14:50:00');

-- Sample Transactions
INSERT INTO Transaction (OrderID, PaymentMethod, PaidAmount)
VALUES (1, 'Credit Card', 650.00),
       (2, 'Cash', 700.00),
       (3, 'Debit Card', 450.00),
       (4, 'Credit Card', 550.00);

-- Sample Deliveries
INSERT INTO Delivery (OrderID, BranchID, DeliveryAddress, DeliveryStatus, DeliveryTime)
VALUES (1, 2, 'House #1, DHA, Lahore', 'Delivered', '11:00:00'),
       (2, 1, 'House #23, Gulberg, Lahore', 'Delivered', '12:15:00'),
       (3, 3, 'House #45, Model Town, Lahore', 'In Transit', '12:45:00'),
       (4, 4, 'Sector F-7, Islamabad', 'Delivered', '14:00:00');

-- Sample Reviews
INSERT INTO Review (UserName, OrderID, Rating, Comment)
VALUES ('ali_khan', 1, 4, 'Great coffee and quick service!'),
       ('ayesha_zafar', 2, 5, 'Loved the burger!'),
       ('sara_ali', 3, 3, 'Good, but the pasta was cold.'),
       ('usman_tariq', 4, 5, 'Amazing frappuccino!');

