# 1️⃣ Retrieve All Successful Bookings
CREATE VIEW Successful_Bookings AS
SELECT *
FROM bookings
WHERE Booking_Status = 'Success';

-- # 2️⃣ Average Ride Distance Per Vehicle Type
CREATE VIEW Avg_Ride_Distance AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS avg_distance
FROM bookings
GROUP BY Vehicle_Type;

-- # 3️⃣ Total Cancelled Rides by Customers
CREATE VIEW Cancelled_Rides_By_Customers AS
SELECT COUNT(*) AS total_cancelled_by_customers
FROM bookings
WHERE Booking_Status = 'Cancelled by Customer';

-- # 4️⃣ Top 5 Customers by Booking Count
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC
LIMIT 5;

-- # 5️⃣ Rides Cancelled by Drivers (Personal & Car Issues)
CREATE VIEW Rides_Cancelled_By_Drivers_Personal_Car AS
SELECT COUNT(*) AS driver_personal_car_cancellations
FROM bookings
WHERE Cancelled_Rides_by_Driver = 'Personal & Car related issue';

-- # 6️⃣ Max & Min Driver Ratings for Prime Sedan
CREATE VIEW Max_Min_Rating_Prime_Sedan AS
SELECT MAX(Driver_Ratings) AS max_rating,
       MIN(Driver_Ratings) AS min_rating
FROM bookings
WHERE Vehicle_Type = 'Prime Sedan';

-- # 7️⃣ All Bookings Paid via UPI
CREATE VIEW UPI_Payments AS
SELECT *
FROM bookings
WHERE Payment_Method = 'UPI';

-- # 8️⃣ Average Customer Rating per Vehicle Type
CREATE VIEW Avg_Customer_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_rating
FROM bookings
GROUP BY Vehicle_Type;

-- # 9️⃣ Total Booking Value from Successful Rides
CREATE VIEW Total_Successful_Ride_Value AS
SELECT SUM(Booking_Value) AS total_revenue
FROM bookings
WHERE Booking_Status = 'Success';

-- # 🔟 Incomplete Rides and Their Reasons
CREATE VIEW Incomplete_Rides_With_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason
FROM bookings
WHERE Incomplete_Rides = 'Yes';