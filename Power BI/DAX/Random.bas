### C&W Notififed In Under 15 Minutes?
```
C&W_Under_15m?:
CWUnder15 = 
CALCULATE(
    COUNTA('Incident Statistics'[CWUnder15Check]),FILTER('Incident Statistics','Incident Statistics'[CWUnder15Metric]= "Yes")
 )
```

```
CWUnder15Calc:
CWUnder15Calc = DIVIDE([CWUnder15],[CWUnder15TOTAL])
```

```
CWUnder15TOTAL:
CWUnder15TOTAL = 
CALCULATE(
    COUNTA('Incident Statistics'[CWUnder15Check]),FILTER('Incident Statistics','Incident Statistics'[CWUnder15Metric]= "Yes" || 'Incident Statistics'[CWUnder15Metric]= "No")
 )
```

```
InitialEmailMeasure1 = 
CALCULATE(
    COUNTA('Incidents (MAIN)'[Custom.1]),FILTER('Incidents (MAIN)','Incidents (MAIN)'[Custom.1]= "Yes")
    )
```
```
InitialEmailMeasure2 = CALCULATE(
    COUNTA('Incidents (MAIN)'[Custom.1]),FILTER('Incidents (MAIN)','Incidents (MAIN)'[Custom.1]= "Yes" || 'Incidents (MAIN)'[Custom.1]= "No")
    )
```

```
CWUnder15Calc:
CWUnder15Calc = DIVIDE([CWUnder15],[CWUnder15TOTAL])
```

```
WeatherLocation -> North Carolina = 
CALCULATE(COUNTROWS('Weather_Statistics'),FILTER('Weather_Statistics','Weather_Statistics'[State/Province]="North Carolina"))
```
***
***
***

### Couting things based on what it is classified as in any column
```
TotalAlarms = 
CALCULATE(COUNTROWS('N4_Data'))
```

```
Class1+2+3+4 = 'Calculations'[Class 1] + 'Calculations'[Class 2] + 'Calculations'[Class 3] + 'Calculations'[Class 4]
```

```
EMEA Alarms = 
CALCULATE(COUNTROWS('AlarmData'),FILTER('MasterBuildingList','MasterBuildingList'[Global Region]="EMEA"))
```

```
APAC Alarms = 
CALCULATE(COUNTROWS('AlarmData'),FILTER('MasterBuildingList','MasterBuildingList'[Global Region]="APAC"))
```

```
AMERICAS Alarms = 
CALCULATE(COUNTROWS('AlarmData'),FILTER('MasterBuildingList','MasterBuildingList'[Global Region]="AMERICAS"))
```
***
***
***
```
String Duration in Hours and Minutes = 
var vMinues=[Duration in Minutes]
var vHours=int( vMinues/60)
var vRemainingMinutes=MOD(vMinues, 60)
return
  vHours&" Hours & "& vRemainingMinutes& " Minutes"
```
***
<img src="https://i1.wp.com/radacad.com/wp-content/uploads/2019/10/2019-10-11_10h07_09.png">
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
