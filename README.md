# SEOUL BIKE RENTAL ANALYSIS – SQL & POWER BI DASHBOARD PROJECT
Author: Benjamin Kurian

Tools Used: Power BI, PostgreSQL, Excel, DAX

## PROJECT OVERVIEW
This project analyzes hourly bike rental activity in Seoul to understand how seasonality, weather conditions, and holidays influence ridership. The goal is to identify the key factors affecting rental demand and provide insights that support operational planning, resource allocation, and strategic decision-making for bike-sharing systems.

## DATASET INFORMATION

Source: (UCI Machine Learning Repository)
https://archive.ics.uci.edu/dataset/560/seoul+bike+sharing+demand

**Records:** 8,465

**Location:** Seoul, South Korea

**Date Range:** December 1, 2017 – November 30, 2018

**Granularity:** Hourly observations

**Variables Included:**
Date,
Hour,
Bike Rental Count,
Temperature (°F),
Humidity (%),
Wind Speed (m/s),
Visibility (10m),
Dew Point Temperature,
Solar Radiation,
Rainfall (mm),
Snowfall (cm),
Season,
Holiday Indicator

## DATA CLEANING AND PREPARATION

The dataset was cleaned and prepared using PostgreSQL and Power BI.

Steps completed:
- Reformatted date values from DD/MM/YYYY to MM/DD/YYYY for proper ingestion.
- Verified dataset contained no missing values.
- Converted temperature values from Celsius to Fahrenheit.
- Ensured appropriate data types for time-series and correlation analysis.
-  Imported the cleaned dataset into Power BI for reporting and visualization.

## KEY METRICS

- Total Rentals: 6.17 million
- Average Hourly Rentals: 729
- Estimated Daily Rentals: ~17,500
- Peak Rental Month: June (1,246 rentals/hour)
- Lowest Rental Month: January (202 rentals/hour)
- Peak Rental Hour: 6 PM (1,554 rentals/hour)
- Lowest Rental Hour: 4 AM (137 rentals/hour)

## KEY INSIGHTS

**Seasonality**
- Bike demand is strongly seasonal, with clear peaks in late spring and early summer.
- June represents the highest rental month, while winter months show significantly lower demand.
- September exhibits a secondary peak due to cooler temperatures and the return of commuter routines.

**Weather Effects**

- Temperature is the strongest predictor of rental demand (correlation: 0.54).
- Solar radiation positively influences ridership.
- Rainfall and snowfall sharply suppress bike usage and act as on/off switches in riding behavior.

**Usage Behavior**

- Morning and evening commuting patterns dominate usage, with peaks at 8 AM and 6 PM.
- Holidays show noticeably lower rentals compared to non-holidays.
- Weekdays generate significantly more total rentals than weekends.

## RECOMMENDATIONS

**Align bike availability with commuter peaks:** Increase rebalancing and fleet allocation during 7–9 AM and 5–7 PM, particularly in spring and summer.

**Integrate weather forecasting into operational planning:** Increase bike availability on warm, clear days and schedule maintenance during predicted rainfall or snow.

**Promote leisure and tourism usage:** Encourage weekend and holiday riding through route suggestions and seasonal promotional campaigns.

**Leverage seasonality for system planning:** Conduct major maintenance during winter when demand is lowest and increase marketing ahead of spring and summer.

## FINAL TAKEAWAYS

- Temperature and weather patterns are the primary drivers of bike rental demand.

- Excessive heat in July and August reduces ridership despite being summer months.

- Rain and snow significantly suppress bike usage.

- Commuting behavior is the dominant usage pattern influencing hourly peaks.

___
### Contact
Benjamin Kurian

LinkedIn: [https://www.linkedin.com/in/kurianaben/](https://www.linkedin.com/in/kurianaben/)

Email: kurianaben@gmail.com
