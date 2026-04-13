--KPI - AVG Booking Value
SELECT AVG(total_amount) as avg_booking_value
FROM GOLD_BOOKING_CLEAN;

--KPI - Total Guests
SELECT SUM(num_guests) AS total_guests
FROM GOLD_BOOKING_CLEAN;

--KPI - Total Bookings
SELECT COUNT(*) as total_bookings
FROM GOLD_BOOKING_CLEAN;

--KPI - Total Revenue
SELECT SUM(total_amount) AS total_revenue
FROM GOLD_BOOKING_CLEAN;
