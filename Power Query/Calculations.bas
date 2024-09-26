Standard Calculation between dates would look like below. If the source columns are Date/Time, it will error with the following formula.
- Duration.Days([Completed Date]-[Assigned Date])
- Table.AddColumn(Source, "Days to Complete", each Duration.Days([Completed Date]-[Assigned Date]))
Change the forumla bar from the above to below to fix the errors
Table.AddColumn(Source, "Days to Complete", each Duration.Days([Completed Date]-[Assigned Date]), Int64.Type)