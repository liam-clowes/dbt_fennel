select date
        ,city
        ,country
        ,time_epoch
        ,date_time
        ,is_day
        ,time
        ,hour
        ,month_of_year
        ,day_of_week
        ,condition_text
        ,temp_c
        ,wind_kph
        ,precip_mm
        ,feelslike_c
        ,windchill_c
        ,chance_of_rain
        ,uv
from {{ref('mart_forecast_hour')}}
group by date
    ,city
    ,country
order by city asc -- optional, alphabetical order

            