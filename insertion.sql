INSERT INTO Restaurant (Restaurant_ID, Name, Location) VALUES
(1, 'Golden Spoon', 'Nicosia'),
(2, 'Olive Garden', 'Kyrenia');

INSERT INTO Customer (C_ID, Name, Email, Address, Restaurant_ID) VALUES
(1, 'Ali Ahmad', 'ali@gmail.com', 'Nicosia', 1),
(2, 'Sara Hasan', 'sara@gmail.com', 'Kyrenia', 2),
(3, 'Omar Khaled', 'omar@gmail.com', 'Famagusta', 1),
(4, 'Lina Youssef', 'lina@gmail.com', 'Nicosia', 1),
(5, 'Ahmad Saleh', 'ahmad@gmail.com', 'Kyrenia', 2),
(6, 'Noor Ibrahim', 'noor@gmail.com', 'Morphou', 2),
(7, 'Khaled Nasser', 'khaled@gmail.com', 'Nicosia', 1);

INSERT INTO Menu (M_ID, Meal_Name, Price, Restaurant_ID) VALUES
(1, 'Burger', 7.50, 1),
(2, 'Pizza', 9.00, 1),
(3, 'Pasta', 8.50, 1),
(4, 'Grilled Chicken', 11.00, 2),
(5, 'Steak', 18.00, 2),
(6, 'Caesar Salad', 6.50, 2);

INSERT INTO Waiter (W_ID, Name, Shift, Salary, Restaurant_ID) VALUES
(1, 'John Smith', 'Morning', 1200, 1),
(2, 'Emma Brown', 'Evening', 1300, 1),
(3, 'Michael Lee', 'Night', 1400, 1),
(4, 'Sophia White', 'Morning', 1250, 2),
(5, 'Daniel Green', 'Evening', 1350, 2),
(6, 'Olivia Martin', 'Night', 1450, 2);

INSERT INTO Orders (O_ID, Order_Date, Status, Amount, C_ID, Restaurant_ID) VALUES
(1, '2025-11-28', 'Completed', 16.50, 1, 1),
(2, '2025-12-01', 'Completed', 9.00, 1, 1),
(3, '2025-12-02', 'Completed', 18.00, 2, 2),
(4, '2025-12-05', 'Pending', 11.00, 2, 2),
(5, '2025-12-06', 'Completed', 7.50, 3, 1),
(6, '2025-12-07', 'Completed', 24.50, 4, 2);

INSERT INTO Reservation (Reservation_ID, Reservation_Date, C_ID, Restaurant_ID) VALUES
(1, '2025-12-10', 1, 1),
(2, '2025-12-11', 2, 2),
(3, '2025-12-12', 3, 1),
(4, '2025-12-13', 4, 2),
(5, '2025-12-14', 5, 2),
(6, '2025-12-15', 7, 1);

INSERT INTO Delivery (D_ID, Delivery_Date, O_ID) VALUES
(1, '2025-11-28', 1),
(2, '2025-12-01', 2),
(3, '2025-12-05', 4),
(4, '2025-12-07', 6);

INSERT INTO Offers (Offer_ID, Description, Discount, Restaurant_ID) VALUES
(1, 'Weekend Special', 10.00, 1),
(2, 'Student Discount', 15.00, 1),
(3, 'Holiday Offer', 20.00, 2),
(4, 'Family Meal Discount', 12.00, 2),
(5, 'New Customer Offer', 8.00, 1),
(6, 'Online Order Discount', 5.00, 2);




