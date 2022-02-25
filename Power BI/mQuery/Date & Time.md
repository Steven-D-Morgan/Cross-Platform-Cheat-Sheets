### Subtract X Day(s)/Month(s)/Year(s) from a Date or Date/Time Column
 - Below are exaples on how to subtract Days, Months or Years
    - X **Days** from a column date.
    ```
    Minus1Day = DATE(YEAR(NOW()), MONTH(NOW()), DAY(NOW()-1))
    ```
    - X **Months** from a column date.
    ```
    Minus1Month = DATE(YEAR(NOW()), MONTH(NOW()-1)), DAY(NOW()
    ```
    - X **Years** from a column date.
    ```
    Minus1Month = DATE(YEAR(NOW(-1)), MONTH(NOW(), DAY(NOW()
    ```

***

### Duration of time between two Date or Date/Time Columns
 - Ways to perform this operation
    - Directly into the editor bar.
       - Replace "COLUMN: Date/Time" with the name of your last step.
    ```
    = Table.AddColumn(#"COLUMN: Date/Time", "Time In Alarm Console", each Duration.Minutes([Acknowledged]-[Timestamp]))
    ```
    - NEW Custom Column
      ```
      Duration.Days([Acknowledged]-[Timestamp])
      ```
      ```
      Duration.Hours([Acknowledged]-[Timestamp])
      ```
      ```
      Duration.Minutes([Acknowledged]-[Timestamp])
      ```
      ```
      Duration.Seconds([Acknowledged]-[Timestamp])
      ```
***


***
