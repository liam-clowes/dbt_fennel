WITH forecast_day_data AS (
    SELECT * 
    FROM {{ref('staging_forecast_day')}}
),
add_features AS (
    SELECT *
        ,DATE_PART('day_of_month', date) AS day_of_month -- day of month as a number
        ,TO_CHAR('month_of_year', date) AS month_of_year -- month name as a text
        ,DATE_PART('year', date) AS year -- year as a number
        ,TO_CHAR('day_of_week', date) AS day_of_week -- weekday name as text
        ,DATE_PART('week_of_year', date) AS week_of_year -- calender week number as number
        ,TO_CHAR('year_and_week', date) AS year_and_week -- year-calenderweek as text like '2024-43'

    FROM forecast_day_data
)
SELECT *
FROM add_features