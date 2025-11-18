






-- 1. Daily total rentals
SELECT 
    date,
    SUM(bike_rental_count) AS daily_rentals
FROM bike_data
GROUP BY date
ORDER BY date;
