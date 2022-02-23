This column is then used in "Conditional Formatting" when using the Table Visual to color code line items based on the values below.

Conditional Formatting
IF 'Asset' = "Asset Not Listed" THEN "1"
IF 'Asset' DOES NOT = "Asset Not Listed" THEN "2"
IF 'Simple Status' = "Open" THEN "3"
IF 'Simple Status' = "On Hold" THEN "4"
IF 'Simple Status' = "Closed" THEN "5"
IF 'Simple Status' = "Cancelled" THEN "6"
ELSE = 0
