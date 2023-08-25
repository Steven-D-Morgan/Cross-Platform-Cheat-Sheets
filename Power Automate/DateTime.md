# DateTime
___
subtractFromTime('<timestamp>', <interval>, '<timeUnit>', '<format>'?)

formatDateTime(utcNow(),'yyyy-MM-dd')

formatDateTime(utcNow(),'MM-dd-yyyy')

subtractFromTime('formatDateTime(utcNow())', 1, 'Day', 'yyyy-MM-dd')

subtractFromTime(utcNow(),24,'Hour','yyyy-MM-dd')
