### Find Average of an entire column
  - Average of a basic numbers column
    ```
    Average: Acknowledged Duration = 
    AVERAGE('AlarmData'[AcknowledgedDuration])
    ```

***
### Counting "text" Values
  - Filters the table "Incidents" and column "Type" to look for the value of "Near Miss". It then counts how many times it finds "Near Miss"
Incidents_NearMissCount = COUNTROWS(FILTER(Incidents, Incidents[Type] = "Near Miss"))
