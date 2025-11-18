/*____________________________________________________________________
Data Segmentation

Purpose:
-To break the data into meaningful user segments or scenarios to compare how different groups behave.

Why it's important:
-Segmentation allows deeper insight into specific user patterns and use cases, beyond just simple averages.

____________________________________________________________________ */
--QUERIES

-- 1. Commute vs non-commute
SELECT
    CASE WHEN hour BETWEEN 7 AND 9 OR hour BETWEEN 17 AND 19 
         THEN 'Commute hours' 
         ELSE 'Non-commute hours' END AS hour_segment,
    AVG(bike_rental_count) AS avg_rentals,
    SUM(bike_rental_count) AS total_rentals
FROM bike_data
GROUP BY hour_segment
ORDER BY avg_rentals DESC;

-- 2. Day type + commute grouping
SELECT
    CASE WHEN EXTRACT(DOW FROM date) IN (0,6) THEN 'Weekend' ELSE 'Weekday' END AS day_type,
    CASE WHEN hour BETWEEN 7 AND 9 OR hour BETWEEN 17 AND 19 
         THEN 'Commute hours' 
         ELSE 'Non-commute hours' END AS hour_segment,
    AVG(bike_rental_count) AS avg_rentals,
    SUM(bike_rental_count) AS total_rentals
FROM bike_data
GROUP BY day_type, hour_segment
ORDER BY day_type, hour_segment;

-- 3. Rainy commute vs dry commute
SELECT
    CASE WHEN rainfall_mm > 0 THEN 'Rainy' ELSE 'Dry' END AS rain_flag,
    CASE WHEN hour BETWEEN 7 AND 9 OR hour BETWEEN 17 AND 19 
         THEN 'Commute hours' 
         ELSE 'Non-commute hours' END AS hour_segment,
    AVG(bike_rental_count) AS avg_rentals,
    SUM(bike_rental_count) AS total_rentals
FROM bike_data
GROUP BY rain_flag, hour_segment
ORDER BY hour_segment, rain_flag;

-- 4. Visibility segments
SELECT
    CASE
        WHEN visibility_10m < 500  THEN 'Low visibility'
        WHEN visibility_10m < 1500 THEN 'Medium visibility'
        ELSE 'High visibility'
    END AS visibility_segment,
    AVG(bike_rental_count) AS avg_rentals,
    COUNT(*)               AS hours
FROM bike_data
GROUP BY visibility_segment
ORDER BY avg_rentals DESC;
