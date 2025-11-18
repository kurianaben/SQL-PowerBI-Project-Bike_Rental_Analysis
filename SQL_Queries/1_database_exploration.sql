/*____________________________________________________________________
Database Exploration
Purpose:
-To understand the structure, quality, and basic behavior of the dataset before doing any deeper analysis.

What it answers:
-What columns exist?
-Are there missing values?
-What is the date range?
-What do typical rental counts look like?
-What categories exist (seasons, holiday, etc.)?

Why it's important:
-It builds a foundation so you know what you're working with and whether the data is clean enough to analyze.

____________________________________________________________________ */
--QUERIES

-- 1. How big is the dataset and what period does it cover?
SELECT 
    COUNT(*)                AS row_count,
    MIN(date)               AS start_date,
    MAX(date)               AS end_date
FROM bike_data;

-- 2. Basic distribution of bike rentals
SELECT 
    MIN(bike_rental_count)  AS min_rentals,
    MAX(bike_rental_count)  AS max_rentals,
    AVG(bike_rental_count)  AS avg_rentals,
    STDDEV(bike_rental_count) AS stddev_rentals
FROM bike_data;

-- 4. Quick null-value check
SELECT 
    SUM(CASE WHEN bike_rental_count IS NULL THEN 1 ELSE 0 END) AS null_rentals,
    SUM(CASE WHEN temperature_f     IS NULL THEN 1 ELSE 0 END) AS null_temp,
    SUM(CASE WHEN humidity_percent  IS NULL THEN 1 ELSE 0 END) AS null_humidity,
    SUM(CASE WHEN rainfall_mm       IS NULL THEN 1 ELSE 0 END) AS null_rain
FROM bike_data;

-- 5. Sample of raw data
SELECT *
FROM bike_data
ORDER BY date, hour
LIMIT 50;
