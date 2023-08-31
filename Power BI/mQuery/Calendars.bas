let
StartDate = List.Min(cWalk[Date_Created]),
EndDate = List.Max(cWalk[Date_Created]),
Source = List.Dates(StartDate, Number.From(EndDate - StartDate)+1, #duration(1,0,0,0)),
#"Converted to Table" = Table.FromList(Source, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Renamed Columns" = Table.RenameColumns(#"Converted to Table",{{"Column1", "Date"}}),
    #"Changed Type" = Table.TransformColumnTypes(#"Renamed Columns",{{"Date", type date}}),
    #"Inserted Year" = Table.AddColumn(#"Changed Type", "Year", each Date.Year([Date]), Int64.Type),
    #"Inserted Quarter" = Table.AddColumn(#"Inserted Year", "Quarter", each Date.QuarterOfYear([Date]), Int64.Type),
    #"Inserted Start of Month" = Table.AddColumn(#"Inserted Quarter", "Start of Month", each Date.StartOfMonth([Date]), type date),
    #"Removed Columns" = Table.RemoveColumns(#"Inserted Start of Month",{"Date", "Year", "Quarter"}),
    #"Removed Duplicates" = Table.Distinct(#"Removed Columns")
in
    #"Removed Duplicates"





let
StartDate = List.Min(cWalk[Date_Created]),
EndDate = List.Max(cWalk[Date_Created]),
Source = List.Dates(StartDate, Number.From(EndDate - StartDate)+1, #duration(1,0,0,0)),
#"Converted to Table" = Table.FromList(Source, Splitter.SplitByNothing(), null, null, ExtraValues.Error),
    #"Renamed Columns" = Table.RenameColumns(#"Converted to Table",{{"Column1", "Date"}}),
    #"Changed Type" = Table.TransformColumnTypes(#"Renamed Columns",{{"Date", type date}}),
    #"Inserted Year" = Table.AddColumn(#"Changed Type", "Year", each Date.Year([Date]), Int64.Type),
    #"Inserted Quarter" = Table.AddColumn(#"Inserted Year", "Quarter", each Date.QuarterOfYear([Date]), Int64.Type),
    #"Inserted Start of Month" = Table.AddColumn(#"Inserted Quarter", "Start of Month", each Date.StartOfMonth([Date]), type date)
in
    #"Inserted Start of Month"


 CALENDAR (DATE (2015, 1, 1), DATE (2021, 12, 31))