let
    Source = SharePoint.Files("https://caliberservicemgmt.sharepoint.com/sites/repo", [ApiVersion = 15]),
    #"Filtered Rows" = Table.SelectRows(Source, each ([Folder Path] = "https://caliberservicemgmt.sharepoint.com/sites/repo/Shared Documents/ReportData/CorrigoWorkOrders/")),
    #"Filtered Hidden Files1" = Table.SelectRows(#"Filtered Rows", each [Attributes]?[Hidden]? <> true),
    #"Invoke Custom Function1" = Table.AddColumn(#"Filtered Hidden Files1", "Transform File", each #"Transform File"([Content])),
    #"Renamed Columns1" = Table.RenameColumns(#"Invoke Custom Function1", {"Name", "Source.Name"}),
    #"Removed Other Columns1" = Table.SelectColumns(#"Renamed Columns1", {"Source.Name", "Transform File"}),
    #"Expanded Table Column1" = Table.ExpandTableColumn(#"Removed Other Columns1", "Transform File", Table.ColumnNames(#"Transform File"(#"Sample File"))),
    #"Remove Columns: INITIAL" = Table.RemoveColumns(#"Expanded Table Column1",{"Currency", "Custom Fields", "Warranty", "PTE", "Time Zone", "Invoice Total", "Invoice Number", "Check Number", "Payment Amount", "Payment Date", "Estimated duration", "IVR Code", "IVR Phone number", "Good Visits", "Bad Visits", "Not Verified Visits", "Visit Services", "Upcoming Visit", "Max Number of Visits", "Execution Plan", "Cru", "Branch"}),
    #"Changed Type" = Table.TransformColumnTypes(#"Remove Columns: INITIAL",{{"NTE", Currency.Type}, {"Quoted NTE", Currency.Type}, {"Created", type date}, {"On-site by", type date}, {"Complete by", type date}, {"Accept/Reject by", type date}, {"Scheduled Start", type date}, {"Accepted", type date}, {"Invoice By", type date}, {"Checked-In On", type date}, {"Completed on", type date}, {"Invoice Date", type date}, {"WO Number", type text}, {"Source.Name", type text}, {"Occupier", type text}, {"Space", type text}, {"Service Location", type text}, {"Problem", type text}, {"Internal note", type text}, {"Status", type text}, {"Priority", type text}, {"Category", type text}, {"Type", type text}, {"Invoice Status", type text}, {"Repair Category", type text}, {"Repair Code", type text}, {"Completed Comment", type text}, {"Rating", type text}}),
    #"Renamed Columns" = Table.RenameColumns(#"Changed Type",{{"Source.Name", "SourceFile"}, {"ZIP", "Zip"}, {"Requested By", "Requester"}, {"Completed on", "Completed Date"}, {"Checked-In On", "Check In Date"}, {"On-site by", "On Site By"}, {"Complete by", "Complete By"}, {"Accept/Reject by", "Accept/Reject By"}, {"Accepted", "Accepted Date"}, {"Type", "Subtype"}, {"Category", "Type"}, {"Created", "Created Date"}}),
    // Extracted the first 5 digits, removed the rest
    #"FORMAT: Zip" = Table.TransformColumns(#"Renamed Columns", {{"Zip", each Text.Start(_, 5), type text}}),
    // Coverted the all capitalized cities to proper format. 
    // 
    // Example: TOMS RIVER ---> Toms River
    #"FORMAT: City" = Table.TransformColumns(#"FORMAT: Zip",{{"City", Text.Proper, type text}}),
    #"COLUMN: Client" = Table.AddColumn(#"FORMAT: City", "Client", each if Text.Contains([Requestor], "AT&T") then "AT&T" else if [Requestor] = "Bank of America" then "Bank of America" else if Text.Contains([Requestor], "USPS") then "USPS" else if [Requestor] = "JLL Alfa Laval" then "Alfa Laval" else if [Requestor] = "JLL Anywhere" then "Anywhere" else if [Requestor] = "JLL Avangrid" then "Avangrid" else if [Requestor] = "JLL BNSF" then "BNSF" else if [Requestor] = "JLL Cognizant" then "Cognizant" else if [Requestor] = "JLL CyrusOne" then "CyrusOne" else if [Requestor] = "JLL Duke Energy" then "Duke Energy" else if [Requestor] = "JLL Fanatics" then "Fanatics" else if [Requestor] = "JLL JOANN" then "JOANN" else if [Requestor] = "JLL Kindred Healthcare" then "Kindred Healthcare" else if [Requestor] = "JLL National Grid" then "National Grid" else if [Requestor] = "JLL Santander" then "Santander" else if [Requestor] = "JLL TIAA" then "TIAA" else if [Requestor] = "JLL Truist" then "Truist" else if [Requestor] = "JLL/Emerus" then "Emerus" else if [Requestor] = "JLL/Meijer" then "Meijer" else if [Requestor] = "JLL/Royal Philips" then "Royal Philips" else if Text.Contains([Requestor], "JLL - PwC") then "PWC" else [Requestor]),
    #"COLUMN: OccupierEdited" = Table.DuplicateColumn(#"COLUMN: Client", "Occupier", "OccupierEdited"),
    #"RV: OccupierEdited" = Table.ReplaceValue(#"COLUMN: OccupierEdited","|","-",Replacer.ReplaceText,{"OccupierEdited"}),
    #"COLUMN: GLC" = Table.AddColumn(#"RV: OccupierEdited", "GLC", each if [Client] = "AT&T" then Text.BetweenDelimiters([OccupierEdited],"-","-")
else "Non-AT&T"),
    #"COLUMN: ProblemAsset" = Table.AddColumn(#"COLUMN: GLC", "Problem Asset", each Text.BetweenDelimiters([Problem], " ", "#(lf)", 1, 0), type text),
    #"COLUMN: ProblemTask" = Table.AddColumn(#"COLUMN: ProblemAsset", "Problem Task", each Text.BetweenDelimiters([Problem], " ", "#(lf)", 3, 0), type text),
    #"COLUMN: ProblemDetails" = Table.AddColumn(#"COLUMN: ProblemTask", "Problem Details", each Text.BetweenDelimiters([Problem], " ", "#(lf)", 8, 0), type text),
    #"Removed Columns" = Table.RemoveColumns(#"COLUMN: ProblemDetails",{"OccupierEdited", "Problem", "Requestor", "Requester", "Space", "Country", "Service Location", "Internal note", "Repair Category", "Repair Code", "Completed Comment"}),
    #"Reordered Columns" = Table.ReorderColumns(#"Removed Columns",{"SourceFile", "Client", "Created Date", "NTE", "Quoted NTE", "Problem Asset", "Problem Task", "GLC", "WO Number", "Status", "Subtype", "Type", "Street", "City", "State", "Zip", "Occupier", "Priority", "On Site By", "Complete By", "Accept/Reject By", "Scheduled Start", "Accepted Date", "Check In Date", "Completed Date",   "Rating", "Invoice Status", "Invoice By", "Invoice Date", "Problem Details"})
in
    #"Reordered Columns"


let
    Source = SharePoint.Files("https://caliberservicemgmt.sharepoint.com/sites/repo", [ApiVersion = 15]),
    #"Filtered Rows" = Table.SelectRows(Source, each ([Folder Path] = "https://caliberservicemgmt.sharepoint.com/sites/repo/Shared Documents/ReportData/CorrigoWorkOrders/")),
    #"Filtered Hidden Files1" = Table.SelectRows(#"Filtered Rows", each [Attributes]?[Hidden]? <> true),
    #"Invoke Custom Function1" = Table.AddColumn(#"Filtered Hidden Files1", "Transform File (5)", each #"Transform File (5)"([Content])),
    #"Renamed Columns1" = Table.RenameColumns(#"Invoke Custom Function1", {"Name", "Source.Name"}),
    #"Removed Other Columns1" = Table.SelectColumns(#"Renamed Columns1", {"Source.Name", "Transform File (5)"}),
    #"Expanded Table Column1" = Table.ExpandTableColumn(#"Removed Other Columns1", "Transform File (5)", Table.ColumnNames(#"Transform File (5)"(#"Sample File (5)")))
in
    #"Expanded Table Column1"