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
 - Here are three different ways to perform the same mathematical operation.
    ```
    TimeInQueue = 24. * 60 * ([Active Start Date:Time]-[Request Start Date:Time])
    ```
    ```
    Difference = DATEDIFF(min(Table1[Date1]),min(table1[Date2]),MINUTE)
    ```
    ```
    MinutesDifference = DATEDIFF(Table1[Date1],Table1[Date2],MINUTE)
    ```

***


***
