#SQL Questions:
#1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS
SELECT * FROM ola_data
WHERE Booking_Status = 'Success';

SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
CREATE VIEW Ride_Distance_For_Each_Vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance)
as avg_distance FROM ola_data
GROUP BY Vehicle_Type;

SELECT * FROM Ride_Distance_For_Each_Vehicle;

#3. Get the total number of cancelled rides by customers:
CREATE VIEW Cancelled_Rides_By_Customers AS
SELECT COUNT(*) FROM ola_data
WHERE Booking_Status = 'Canceled by Customer';

SELECT * FROM Cancelled_Rides_By_Customers;

#4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW Top_5_Customers_Booked_Ride As
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM ola_data
GROUP BY Customer_ID 
ORDER BY total_rides DESC limit 5;

SELECT * FROM Top_5_Customers_Booked_Ride;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Cancle_Ride_by_Drivers_p_c_Issues AS
SELECT COUNT(*) FROM ola_data
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

SELECT * FROM Cancle_Ride_by_Drivers_p_c_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
CREATE VIEW Max_Min_Driver_Ratings_for_Prime_Sedan_Bookings AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM ola_data
WHERE Vehicle_Type = 'Prime Sedan';

SELECT * FROM Max_Min_Driver_Ratings_for_Prime_Sedan_Bookings;

#7. Retrieve all rides where payment was made using UPI:
CREATE VIEW UPI_PAYMENT AS
SELECT * FROM ola_data
WHERE Payment_Method = 'UPI';

SELECT * FROM UPI_PAYMENT;

#8. Find the average customer rating per vehicle type:
CREATE VIEW Average_Customer_Rating_per_vehical_type AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM ola_data
GROUP BY Vehicle_Type;

SELECT * FROM Average_Customer_Rating_per_vehical_type;

#9. Calculate the total booking value of rides completed successfully:
CREATE VIEW Total_successful_ride_value as
SELECT SUM(Booking_Value) AS total_successful_Ride_value
from ola_data
WHERE Booking_Status= 'Success';

select * from Total_successful_ride_value;


#10. List all incomplete rides along with the reason:
CREATE VIEW Incomplete_rides_reason as 
SELECT Booking_ID, Incomplete_Rides_Reason
from ola_data
where Incomplete_Rides = 'Yes';

SELECT * FROM Incomplete_rides_reason;


# Retrieve All Answers

#1. Retrieve all successful bookings:
SELECT * FROM Successful_Bookings;

#2. Find the average ride distance for each vehicle type:
SELECT * FROM Ride_Distance_For_Each_Vehicle;

#3. Get the total number of cancelled rides by customers:
SELECT * FROM Cancelled_Rides_By_Customers;

#4. List the top 5 customers who booked the highest number of rides:
SELECT * FROM Top_5_Customers_Booked_Ride;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT * FROM Cancle_Ride_by_Drivers_p_c_Issues;

#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM Max_Min_Driver_Ratings_for_Prime_Sedan_Bookings;

#7. Retrieve all rides where payment was made using UPI:
SELECT * FROM UPI_PAYMENT;

#8. Find the average customer rating per vehicle type:
SELECT * FROM Average_Customer_Rating_per_vehical_type;

#9. Calculate the total booking value of rides completed successfully:
select * from Total_successful_ride_value;

#10. List all incomplete rides along with the reason:
SELECT * FROM Incomplete_rides_reason;