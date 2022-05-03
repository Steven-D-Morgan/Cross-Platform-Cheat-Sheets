### Combine Contents of two columns into one.
 - Very useful when using the "Search Box" visual
```
[Timestamp]&" - "&[Source]
```
***
***
***
### Count Characters
 - For example, if the a contained the word "Hello". The result would be "5"
```
= Table.AddColumn(#"EXTRACT: BCE_01", "BCE_01_Length", each Text.Length([BCE_01]))
```
How could this be useful? I had a scenario where I was attempting to extract a 2 digit building code between delimiters. The problem is the data was very messy and inconsistent. So sometimes I would get HeatPumpAlarm in between my underscore delimters. Building codes are ALWAYS 2 digit. The below mQuery solves the problem for this use case
```
if [BCE_03] = "Yes" then [BCE_01]
else if [BCE_01_Length] = 2 then [BCE_01]
else if [BCE_02_Length] = 2 then [BCE_02]
else "I AM BROKEN, FIX ME"
```
***
***
***
### Assorted Time Calculations
```
Duration.TotalMinutes([NormalTime]-[Timestamp])
```
```
Duration.Minutes(#duration(4, 13, 5, 23))
```
```
if [StatusSimple] = "Cancelled" then "Cancelled"
else if Duration.Days(DateTime.LocalNow() - [Due Date]) <= 0 then "OnTime"
else if Duration.Days(DateTime.LocalNow() - [Due Date]) > 0 then "Late"
else if Duration.Days([Technically Completed] - [Due Date]) <= 0 then "OnTime"
else if Duration.Days([Technically Completed] - [Due Date]) > 0 then "Late"
else "TBD"
```
```
if [PAID ON] = null and Duration.Days(Date.From(DateTime.LocalNow()) - [DUE]) >= 0 then "On Time"
else if Duration.Days(Date.From(DateTime.LocalNow()) - [DUE]) >= 0 then "On Time"
else if Duration.Days(Date.From(DateTime.LocalNow()) - [DUE]) < 0 then "Late"
else if Duration.Days([PAID ON] - [DUE]) <= 0 then "On Time"
else if Duration.Days([PAID ON] - [DUE]) > 0 then "Late"
else "TBD"
```
```
if [Due Date] = null then "OnTime"
else if [SLA_01] = "OnTime" then "OnTime"
else if [SLA_01] = "Late" then "Late"
else if [SLA_01] = "Cancelled" then "Cancelled"
else "TBD"
```
```
if [DueDateMinusDateTimeLocalNow] = "-999.23:23:23" then "Closed/Cancelled"
else if [#"StatusSimple#"] = 1 and [DueDateMinusDateTimeLocalNow] >= 0 then "OnTime"
else "Late"
```
***
***
***
### DATE SLIDER: If it is a PM, display start date; If CM use requested completion date.
```
if [#"CM/PM"] = "PM" then ([Start Date])
else if [#"CM/PM"] = "CM" then ([Due Date])
else null
```
***
***
***
### Add column contents to a static URL
```
                          = Table.AddColumn(Abeldex_Contact_Table, "Some Website", each if [CID] = null then "https://www.somewebsite.com/#!/home/search/advancedSearch" 
else if [CID] = "N/A" then "https://www.somewebsite.com/#!/home/search/advancedSearch" 
else if [CID] = "TBD" then "https://www.somewebsite.com/#!/home/search/advancedSearch"
else "https://www.somewebsite.com/EmployeePortal/Search?id=" & [CID])
```
```
= Table.AddColumn(#"COLUMN: Link", "Email Me!", each if [EMAIL] = "N/A" then "Unavailable"
else if [EMAIL] = null then "Unavailable"
else "mailto:" & [EMAIL])
```
***
***
***
***
***
***
***
***
***
***
### USING VARIABLES
```
Duration =
var IntimeMin = HOUR(Table1[In Time])*60+MINUTE(Table1[In Time])+SECOND(Table1[In Time])/60
var OutTimeMin = HOUR(Table1[Out Time])*60+MINUTE(Table1[Out Time])+SECOND(Table1[Out Time])/60 return

OutTimeMin-IntimeMin
```
***
***
***
```

```
***
***
***
```

```
***
***
***
```

```
***
***
***
```

```
***
***
***
```

```
***
***
***
```

```
***
***
***
```

```
***
***
***
