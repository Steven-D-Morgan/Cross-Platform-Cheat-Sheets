### Find Average of an entire column
  - Average of a basic numbers column
    ```
    Average: Acknowledged Duration = 
    AVERAGE('AlarmData'[AcknowledgedDuration])
    ```

***
### Counting "text" Values
  - Filters the table "Incidents" and column "Type" to look for the value of "Near Miss". It then counts how many times it finds "Near Miss"
    ```
    Incidents_NearMissCount = COUNTROWS(FILTER(Incidents, Incidents[Type] = "Near Miss"))
    ```

TRIR_2022A = 
DIVIDE(
    CALCULATE(
        SUM(Incidents_TRIR[Count]),
        Incidents_TRIR[Year] = 2022
    ) * 200000,
    SUM(TRIR_Hours[HoursWorked])
)


Rolling 12 Months Recordables Count = 
CALCULATE(
    SUM('incident'[recordables_count]),
    FILTER(
        ALL('mdatetable'[Date]),
        'mdatetable'[Date] >= MAX('mdatetable'[Date]) - 365
&& 'mdatetable'[Date] <= MAX('mdatetable'[Date])
    )
)



Rolling 12 Months TRIR_Hours = CALCULATE(     SUM('TRIR_Hours'[HOURS_WORKED]),     FILTER(         ALL('mdatetable'[Date]),         'mdatetable'[Date] >= MAX('mdatetable'[Date]) - 365         && 'mdatetable'[Date] <= MAX('mdatetable'[Date])     ) )