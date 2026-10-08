# OLA Ride Booking Analytics Project

## Project Overview

This project analyzes OLA ride-booking data using **Excel, MySQL, and
Power BI**. The objective is to transform raw booking data into useful
business insights around ride volume, vehicle performance, revenue,
cancellations, ratings, payment methods, and incomplete rides.

The project combines SQL-based analysis with an interactive Power BI
report and Excel-based data analysis to demonstrate an end-to-end data
analytics workflow.

## Tools & Technologies

-   **Excel** -- data preparation, analysis, and exploratory reporting
-   **MySQL** -- SQL querying, aggregation, filtering, grouping,
    sorting, and views
-   **Power BI** -- interactive dashboard, KPI reporting, charts,
    filtering, and visualization
-   **SQL** -- business-question-based analysis of OLA booking data

## Dataset

The project uses an OLA ride-booking dataset containing booking-level
information. The SQL analysis works with the `ola_data` table. Key
fields used in the analysis include:

-   Booking_ID
-   Booking_Status
-   Customer_ID
-   Vehicle_Type
-   Ride_Distance
-   Driver_Ratings
-   Customer_Rating
-   Payment_Method
-   Booking_Value
-   Canceled_Rides_by_Driver
-   Incomplete_Rides
-   Incomplete_Rides_Reason

## Project Workflow

``` text
Raw OLA Booking Data
        ↓
Excel Data Analysis / Preparation
        ↓
MySQL SQL Analysis
        ↓
Business Questions & Aggregations
        ↓
Power BI Data Model & Visualizations
        ↓
Interactive OLA Analytics Dashboard
```

## Excel Analysis

Excel is used as part of the data-analysis workflow for working with the
booking data and preparing information for further analysis. Typical
analysis includes duplicate remove, sorting, filtering, checking data quality, and
summarizing booking-related metrics.

## SQL Analysis

The SQL component contains 10 business questions implemented using MySQL
views and queries. The analysis includes:

1.  Retrieve all successful bookings.
2.  Calculate average ride distance for each vehicle type.
3.  Calculate the total number of rides cancelled by customers.
4.  Identify the top 5 customers by number of rides booked.
5.  Calculate rides cancelled by drivers due to personal and car-related
    issues.
6.  Find maximum and minimum driver ratings for Prime Sedan bookings.
7.  Retrieve rides where payment was made using UPI.
8.  Calculate average customer rating by vehicle type.
9.  Calculate total booking value for successfully completed rides.
10. Retrieve incomplete rides along with their reasons.

The uploaded SQL script creates reusable views such as
`Successful_Bookings`, `Ride_Distance_For_Each_Vehicle`,
`Top_5_Customers_Booked_Ride`, `UPI_PAYMENT`, and
`Total_successful_ride_value`.

## Power BI Dashboard

The Power BI report is organized into the following report pages:

### 1. Overall

Provides an overall view of OLA booking activity and ride volume over
time.

### 2. Vehicle Type

Analyzes booking activity by vehicle type and helps compare ride
performance across vehicle categories.

### 3. Revenue

Focuses on booking-value and revenue-related analysis.

### 4. Cancellation

Analyzes booking cancellations and cancellation-related patterns.

### 5. Ratings

Provides analysis related to customer and driver ratings.

## Key Business Areas Analyzed

-   Booking volume and ride trends
-   Successful vs. cancelled rides
-   Customer booking behavior
-   Vehicle-type performance
-   Ride distance
-   Booking value / revenue
-   Customer and driver ratings
-   Payment methods
-   Driver cancellation reasons
-   Incomplete rides and their reasons

## SQL Concepts Used

-   `SELECT`
-   `WHERE`
-   `GROUP BY`
-   `ORDER BY`
-   Aggregate functions such as `COUNT()`, `AVG()`, `SUM()`, `MAX()`,
    and `MIN()`
-   `CREATE VIEW`
-   `LIMIT`

## Project Outcome

The project demonstrates how raw ride-booking data can be converted into
structured business analysis using multiple analytics tools. SQL is used
to answer specific business questions, Excel supports data analysis and
preparation, and Power BI presents the results through an interactive
dashboard.

## Files Included

-   `OLA Project.pbix` -- Power BI report
-   `OlA sql task.sql` -- MySQL analysis queries and views
-   `README.md` -- Project documentation

## How to Use

1.  Load the OLA dataset into MySQL and create the `ola_data` table.
2.  Open `OlA sql task.sql` in MySQL Workbench and execute the required
    queries/views.
3.  Open `OLA Project.pbix` using Power BI Desktop.
4.  Refresh the data if the source connection is available.
5.  Navigate through the **Overall, Vehicle Type, Revenue, Cancellation,
    and Ratings** pages to explore the analysis.

## Skills Demonstrated

**Excel \| SQL \| MySQL \| Power BI \| Data Cleaning \| Data Analysis \|
Business Intelligence \| Data Visualization \| KPI Analysis**

## Power Bi Dashboard Screenshots
Dashboard look like -> https://github.com/sonakshimathur07/OLA-/blob/main/OLA%20dashboard.png

## Author

**Sonakshi Mathur**

Data Analytics / Data Science Portfolio Project
