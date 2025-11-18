/*____________________________________________________________________
Change Over Time

Purpose:
-To analyze how bike rentals vary across different time periods (daily, monthly, hourly).

What it answers:
-Are rentals increasing or decreasing over time?
-What months are busiest?
-What hours of the day have peak demand?
-What's the difference between weekdays and weekends?

Why it's important:
-Time-based patterns are crucial for operations, forecasting, and understanding user behavior.
____________________________________________________________________ */
--QUERIES

-- 1. Daily total rentals
SELECT 
    date,
    SUM(bike_rental_count) AS daily_rentals
FROM bike_data
GROUP BY date
ORDER BY date;
