StartDate = List.Min(cWalk[Date_Created]),
EndDate = Date.AddDays(Date.From(DateTime.LocalNow()),30)
EndDate = Date.StartOfMonth(List.Max(Incidents[Incident Date])),
EndDate = List.Max(cWalk[Date_Created]),
EndDate = Date.EndOfMonth(List.Max(_AllAudits[Audit Date]))
EndDate = Date.From(DateTime.LocalNow())


 let
    StartDate = Date.StartOfMonth(List.Min(Incidents[Incident Date])),
    EndDate = Date.StartOfMonth(List.Max(Incidents[Incident Date])),
    DateList = List.Dates(StartDate, Duration.Days(EndDate - StartDate) + 1, #duration(1,0,0,0)),
    DateTable = Table.FromList(DateList, Splitter.SplitByNothing(), {"DateTable"}),
    #"Changed Type" = Table.TransformColumnTypes(DateTable,{{"DateTable", type date}}),
    #"Inserted Year" = Table.AddColumn(#"Changed Type", "Year", each Date.Year([DateTable])),
    #"Inserted Month" = Table.AddColumn(#"Inserted Year", "Month", each Date.Month([DateTable]), Int32.Type),
    #"Inserted Day" = Table.AddColumn(#"Inserted Month", "Day", each Date.Day([DateTable]), Int32.Type),
    #"Inserted Weekday" = Table.AddColumn(#"Inserted Day", "Weekday", each Date.DayOfWeek([DateTable]), Int32.Type),
    #"Inserted MonthName" = Table.AddColumn(#"Inserted Weekday", "MonthName", each Date.ToText([DateTable], "MMMM"), type text),
    #"Inserted MonthNameShort" = Table.AddColumn(#"Inserted MonthName", "MonthNameShort", each Date.ToText([DateTable], "MMM"), type text),
    #"Inserted QuarterNo" = Table.AddColumn(#"Inserted MonthNameShort", "QuarterNo", each Date.QuarterOfYear([DateTable]), Int32.Type),
    #"Inserted YearQuarter" = Table.AddColumn(#"Inserted QuarterNo", "YearQuarter", each Text.Combine({Text.From([Year]), " Q", Text.From([QuarterNo])}), type text),
    #"Inserted Year-Month" = Table.AddColumn(#"Inserted YearQuarter", "Year-Month", each Text.Combine({Text.From([Year]), "-", Text.PadStart(Text.From([Month]), 2, "0")}), type text),
    #"Inserted YearMonthDay" = Table.AddColumn(#"Inserted Year-Month", "YearMonthDay", each Text.Combine({Text.From([Year]), Text.PadStart(Text.From([Month]), 2, "0"), Text.PadStart(Text.From([Day]), 2, "0")}), type text),
    #"COLUMN: Quarter" = Table.AddColumn(#"Inserted YearMonthDay", "Quarter", each Text.Combine({"Q", Text.From([QuarterNo], "en-IN")}), type text),
    #"COLUMN: Date" = Table.DuplicateColumn(#"COLUMN: Quarter", "DateTable", "Date"),
    #"COLUMN: StartOfMonth" = Table.AddColumn(#"COLUMN: Date", "StartOfMonth", each Date.StartOfMonth([DateTable])),
    #"COLUMN: DateToday" = Table.AddColumn(#"COLUMN: StartOfMonth", "DateToday", each DateTime.LocalNow()),
    #"Changed Type1" = Table.TransformColumnTypes(#"COLUMN: DateToday",{{"StartOfMonth", type date}, {"DateTable", type date}, {"Date", type datetime}, {"DateToday", type date}, {"Year", Int64.Type}}),
    #"COLUMN: IsInCurrentYear" = Table.AddColumn(#"Changed Type1", "IsInCurrentYear", each Date.IsInCurrentYear([Date])),
    #"COLUMN: IsInCurrentMonth" = Table.AddColumn(#"COLUMN: IsInCurrentYear", "IsInCurrentMonth", each Date.IsInCurrentMonth([Date])),
    #"COLUMN: Month-Year" = Table.AddColumn(#"COLUMN: IsInCurrentMonth", "Month-Year", each Text.Combine({Date.ToText(Date.From([#"Year-Month"]), "MM"), "-", Date.ToText(Date.From([#"Year-Month"]), "yyyy")}), type text),
    #"COLUMN: MonthNumber-MonthShort" = Table.AddColumn(#"COLUMN: Month-Year", "MonthNumber-MonthShort", each Text.Combine({"0", Text.From([Month], "en-US"), "-", [MonthNameShort]}), type text)
in
    #"COLUMN: MonthNumber-MonthShort"