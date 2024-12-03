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
       ('Ch1B1', 'Ayesha Sher', '03122377775', 'ayesha.sher@example.com', 'Female', 'Lahore - Gulberg', 'password6'),
       ('Ca1B1', 'Sara Sher', '03033339999', 'sara.sher@example.com', 'Female', 'Lahore - Gulberg', 'password7'),
       ('MB1', 'Ahmed Khan', '03225545866', 'ahmed.khan@example.com', 'Male', 'Lahore - Gulberg', 'password8'),
       ('R1B1', 'Ali Yasir', '03215975636', 'ali.yasir@example.com', 'Male', 'Lahore - Gulberg', 'password9'),
       ('B1B2', 'Meer Khalid', '03222233344', 'meer.khalid@example.com', 'Male', 'Lahore - DHA', 'password10'),
       ('Ch1B2', 'Minahil Khilji', '03122377775', 'minahil.khilji@example.com', 'Female', 'Lahore - DHA', 'password11'),
       ('Ca1B2', 'Sara Naqvi', '03033339999', 'sara.naqvi@example.com', 'Female', 'Lahore - DHA', 'password12'),
       ('MB2', 'junejo Hamza', '03225545866', 'junejo.hamza@example.com', 'Male', 'Lahore - DHA', 'password13'),
       ('R1B2', 'Rana Sadaqat', '03215975636', 'rana.sadaqat@example.com', 'Male', 'Lahore - DHA', 'password14'),
       ('B1B3', 'Sharafat Ali', '03222233344', 'sharafat.ali@example.com', 'Male', 'Lahore - Model Town', 'password15'),
       ('Ch1B3', 'Maryam Shareef', '03122377775', 'maryam.shareef@example.com', 'Female', 'Lahore - Model Town', 'password16'),
       ('Ca1B3', 'Navida Zulqarnain', '03033339999', 'navida.zulqarnain@example.com', 'Female', 'Lahore - Model Town', 'password17'),
       ('MB3', 'Asim Muneer', '03225545866', 'asim.muneer@example.com', 'Male', 'Lahore - Model Town', 'password18'),
       ('R1B3', 'Shebaz Shareef', '03215975636', 'shebaz.shareef@example.com', 'Male', 'Lahore - Model Town', 'password19'),
       ('B1B4', 'Nawaz Shareef', '03222233344', 'nawaz.shareef@example.com', 'Male', 'Lahore - F-7', 'password20'),
       ('Ch1B4', 'Saqeena Makhlooq', '03122377775', 'saqeena.makhlooq@example.com', 'Female', 'Lahore - F-7', 'password21'),
       ('Ca1B4', 'Yo Yong', '03033339999', 'yo.yong@example.com', 'Female', 'Lahore - F-7', 'password22'),
       ('MB4', 'Abdul Rehman', '03225545866', 'abdul.rehman@example.com', 'Male', 'Lahore - F-7', 'password23'),
       ('R1B4', 'John Doe', '03215975636', 'john.doe@example.com', 'Male', 'Lahore - F-7', 'password24');


INSERT INTO Customer (UserID, NumberOrders)
VALUES 
    (1, 1),
    (2, 1),
    (3, 1),
    (4, 1);


-- Insert Employees
INSERT INTO Employee (EmployeeID, UserID, BranchID, Designation, HireDate, Salary)
VALUES 
    ('B1B1', 1, 1, 'Barista', '2022-03-01', 35000.00),
    ('Ch1B1', 2, 1, 'Chef', '2021-08-12', 45000.00),
    ('Ca1B1', 3, 1, 'Cashier', '2023-01-15', 30000.00),
    ('MB1', 4, 1, 'Manager', '2021-05-10', 60000.00),
    ('R1B1', 5, 1, 'Rider', '2022-10-20', 25000.00),
    ('B1B2', 6, 2, 'Barista', '2022-03-01', 35000.00),
    ('Ch1B2', 7, 2, 'Chef', '2021-08-12', 45000.00),
    ('Ca1B2', 8, 2, 'Cashier', '2023-01-15', 30000.00),
    ('MB2', 9, 2, 'Manager', '2021-05-10', 60000.00),
    ('R1B2', 10, 2, 'Rider', '2022-10-20', 25000.00),
    ('B1B3',11, 3, 'Barista', '2022-03-01', 35000.00),
    ('Ch1B3', 12, 3, 'Chef', '2021-08-12', 45000.00),
    ('Ca1B3', 13, 3, 'Cashier', '2023-01-15', 30000.00),
    ('MB3',14, 3, 'Manager', '2021-05-10', 60000.00),
    ('R1B3', 15, 3, 'Rider', '2022-10-20', 25000.00),
    ('B1B4', 16, 4, 'Barista', '2022-03-01', 35000.00),
    ('Ch1B4', 17, 4, 'Chef', '2021-08-12', 45000.00),
    ('Ca1B4', 18, 4, 'Cashier', '2023-01-15', 30000.00),
    ('MB4', 19, 4, 'Manager', '2021-05-10', 60000.00),
    ('R1B4', 20, 4, 'Rider', '2022-10-20', 25000.00);


-- Insert Menu Items
-- Coffee
INSERT INTO Menu (Name, Category, Price, AvailabilityStatus, ImagePath)
VALUES ('Blonde Vanilla Latte', 'Coffee', 350.00, 'Available','image/Coffee/BlondeVanillaLatte.webp'),
       ('Cafe au lait', 'Coffee', 300.00, 'Available','image/Coffee/CafeauLait.webp'),
       ('Caffe Americano', 'Coffee', 400.00, 'Available','image/Coffee/CaffeAmericano.jpeg'),
       ('Caffe Misto', 'Coffee', 320.00, 'Available','image/Coffee/CaffeMisto.jpeg'),
       ('Caffe Mocha', 'Coffee', 420.00, 'Available','image/Coffee/CaffeMocha.webp'),
       ('Cappuccino', 'Coffee',350.00, 'Available','image/Coffee/Cappuccino.webp'),
       ('Classic Signature Chocolate', 'Coffee',380.00, 'Available','image/Coffee/Classic Signature Chocolate.webp'),
       ('Golden Turmeric Latte', 'Coffee', 360.00, 'Available','image/Coffee/GoldenTurmericLatte.webp'),
       ('Honey Almond', 'Coffee',390.00, 'Available','image/Coffee/HoneyAlmond.webp'),
       ('Iced Brown Sugar Oat', 'Coffee', 400.00, 'Available','image/Coffee/IcedBrownSugarOat.webp'),
       ('Iced Mocha', 'Coffee',410.00, 'Available','image/Coffee/IcedMocha.jpeg'),
       ('Latte Macchiato', 'Coffee',370.00, 'Available','image/Coffee/LatteMacchiato.webp'),
       ('Lavender Latte', 'Coffee',360.00, 'Available','image/Coffee/LavenderLatte.webp'),
       ('Signature Chocolate Salted Caramel', 'Coffee',380.00, 'Available','image/Coffee/Signature Chocolate Salted Caramel.webp'),
       ('Signature Chocolate Toasted Almond', 'Coffee',390.00, 'Available','image/Coffee/Signature Chocolate Toasted Almond.webp'),
       ('Signature Chocolate Toasted Marshmallow', 'Coffee',420.00, 'Available','image/Coffee/Signature Chocolate Toasted Marshmallow.webp'),
       ('Sparkling Mint', 'Coffee',350.00, 'Available','image/Coffee/SparklingMint.webp'),
       ('Spiced Espresso', 'Coffee',370.00, 'Available','image/Coffee/SpicedEspresso.webp'),
       ('Strawberry Latte', 'Coffee',360.00, 'Available','image/Coffee/StrawberryLatte.webp'),
       ('Vanilla Latte', 'Coffee',390.00, 'Available','image/Coffee/VanillaLatte.webp');

-- Tea
INSERT INTO Menu (Name, Category, Price, AvailabilityStatus, ImagePath)
VALUES ('Chai Latte', 'Tea',320.00, 'Available','image/Tea/ChaiLatte.avif'),
       ('Chai Tea', 'Tea',300.00, 'Available','image/Tea/ChaiTea.jpeg'),
       ('Chai Tea Latte','Tea', 340.00, 'Available','image/Tea/ChaiTeaLatte.jpeg'),
       ('Iced Chai Latte', 'Tea',350.00, 'Available','image/Tea/IcedChaiLatte.jpeg'),
       ('Iced Chai Tea Latte', 'Tea',330.00, 'Available','image/Tea/IcedChaiTeaLatte.jpeg'),
       ('Iced Chai Tea Latte with Vanilla Ice Cream', 'Tea',370.00, 'Available','image/Tea/IcedChaiTeaLatteWithVanillaIceCream.jpeg'),
       ('Iced Chai Tea Oat Latte', 'Tea',360.00, 'Available','image/Tea/IcedChaiTeaOatLatte.jpeg');

-- Brewages
INSERT INTO Menu (Name, Category, Price, AvailabilityStatus, ImagePath)
VALUES ('Frozen Tropical Citrus Strawberry Energy Drink', 'Beverage',300.00, 'Available','image/Brewages/FrozenTropicalCitrusStrawberryEnergyDrink.jpeg'),
       ('Melon Burst Energy Drink', 'Beverage',330.00, 'Available','image/Brewages/MelonBurstEnergyDrink.jpeg'),
       ('Mango Dragon fruit Lemonade Refreshers', 'Beverage',320.00, 'Available','image/Brewages/MangoDragonfruitLemonadeRefreshers.jpeg'),
       ('Pineapple Passion fruit Refreshers Lemonade', 'Beverage',340.00, 'Available','image/Brewages/PineapplePassionfruitRefreshersLemonade.jpeg'),
       ('Strawberry Acai Lemonade Refreshers', 'Beverage',310.00, 'Available','image/Brewages/StrawberryAcaiLemonadeRefreshers.jpeg'),
       ('Frozen Mango Dragon fruit Refresher Lemonade','Beverage', 340.00, 'Available','image/Brewages/FrozenMangoDragonfruitRefresherLemonade.jpeg'),
       ('Frozen Pineapple Passion fruit Refresher Lemonade', 'Beverage',330.00, 'Available','image/Brewages/FrozenPineapplePassionfruitRefresherLemonade.jpeg'),
       ('Frozen Strawberry Acai Refresher Lemonade', 'Beverage',350.00, 'Available','image/Brewages/FrozenStrawberryAcaiRefresherLemonade.jpeg'),
       ('Tropical Citrus Energy Drink', 'Beverage',320.00, 'Available','image/Brewages/TropicalCitrusEnergyDrink.jpeg');

-- Frappuccino
INSERT INTO Menu (Name, Category, Price, AvailabilityStatus, ImagePath)
VALUES ('Caramel Brule Frappuccino', 'Frappuccino',400.00, 'Available','image/Frappuccino/CaramelBruleFrappuccino.jpeg'),
       ('Chai Tea Cream Frappuccino', 'Frappuccino',420.00, 'Available','image/Frappuccino/ChaiTeaCreamFrappuccino.jpeg'),
       ('Java Chip Frappuccino', 'Frappuccino',450.00, 'Available','image/Frappuccino/JavaChipFrappuccino.jpeg'),
       ('Matcha Green Tea Frappuccino', 'Frappuccino',460.00, 'Available','image/Frappuccino/MatchaGreenTeaFrappuccino.jpeg'),
       ('Mocha Cookie Crumble Frappuccino', 'Frappuccino',470.00, 'Available','image/Frappuccino/MochaCookieCrumbleFrappuccino.jpeg'),
       ('Peppermint White Chocolate Creme Frappuccino', 'Frappuccino',430.00, 'Available','image/Frappuccino/PeppermintWhiteChocolateCremeFrappuccino.jpeg'),
       ('Peppermint White Chocolate Mocha Frappuccino', 'Frappuccino',440.00, 'Available','image/Frappuccino/PeppermintWhiteChocolateMochaFrappuccino.jpeg'),
       ('Strawberry Frappuccino', 'Frappuccino',410.00, 'Available','image/Frappuccino/StrawberryFrappuccino.jpeg'),
       ('White Chocolate Creme Frappuccino', 'Frappuccino',450.00, 'Available','image/Frappuccino/WhiteChocolateCremeFrappuccino.jpeg');

-- Other Food Items
INSERT INTO Menu (Name, Category, Price, AvailabilityStatus, ImagePath)
VALUES ('Beef Burger','Burger', 550.00, 'Available','image/Burger/f2.png'),
       ('Krunch Burger', 'Burger',400.00, 'Available','image/Burger/f7.png'),
       ('Grilled Fillet Burger', 'Burger',600.00, 'Available','image/Burger/f8.png'),
       ('Cheese Vegetable Pizza', 'Pizza',800.00, 'Available','image/CheeseVegetablePizza.png'),
       ('Mint Margarita Pizza', 'Pizza',700.00, 'Available','image/Pizza/MintMargaretaPizza.png'),
       ('Pepperoni Pizza', 'Pizza',850.00, 'Available','image/Pizza/PepperoniPizza.png'),
       ('Macaroni Pasta', 'Pasta',500.00, 'Available','image/Pasta/f4.png'),
       ('Alfredo Pasta', 'Pasta',600.00, 'Available','image/Pasta/f9.png'),
       ('French Fries', 'Fries',200.00, 'Available','image/Fries/f5.png');


-- Sample Orders
INSERT INTO Orders (UserID, EmployeeID, BranchID, OrderDate, OrderTime)
VALUES (1, 'Ca1B2', 1, '2024-11-10', '10:30:00'),
       (2, 'Ca1B4', 2, '2024-11-11', '11:45:00'),
       (3, 'Ca1B1', 3, '2024-11-12', '13:20:00'),
       (4, 'Ca1B3', 4, '2024-11-13', '14:50:00');

-- Insert Transactions
INSERT INTO Transaction (OrderID, PaymentMethod, PaidAmount)
VALUES (1, 'Credit Card', 650.00),
       (2, 'Cash', 700.00),
       (3, 'Debit Card', 450.00),
       (4, 'Credit Card', 550.00);

-- Insert Deliveries
INSERT INTO Delivery (OrderID, BranchID, DeliveryAddress, DeliveryStatus, DeliveryTime)
VALUES (1, 2, 'House #1, DHA, Lahore', 'Delivered', '11:00:00'),
       (2, 1, 'House #23, Gulberg, Lahore', 'Delivered', '12:15:00'),
       (3, 3, 'House #45, Model Town, Lahore', 'In Transit', '12:45:00'),
       (4, 4, 'Sector F-7, Islamabad', 'Delivered', '14:00:00');

-- Insert Reviews (using CustomerID instead of UserName)
INSERT INTO Review (UserID, OrderID, Rating, Comment)
VALUES (1, 1, 4, 'Great coffee and quick service!'),
       (2, 2, 5, 'Loved the burger!'),
       (3, 3, 3, 'Good, but the pasta was cold.'),
       (4, 4, 5, 'Amazing frappuccino!');


INSERT INTO ReservationTable (Name, PhoneNumber, Email, NumberOfPeople, ReservationDate)
VALUES ('Ali Khan', '03011223344','ali_khan@example.com', 2, '2024-11-10'),
       ('Ayesha Zafar', '03122334455', 'ayesha.zafar@example.com', 4, '2024-11-11');

       