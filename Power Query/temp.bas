let
    Source = Table.Combine({kNet_QEW, kNet_OnsiteContractorManagement, kNet_ContractorRiskManagement}),
    #"COLUMN: Site" = Table.AddColumn(Source, "Site", each if Text.StartsWith([Location], "V") then "VIR" else [Location]),
    // Proper Name: FirstName LastName
    // 
    #"COLUMN: Name" = Table.AddColumn(#"COLUMN: Site", "Name", each let splitUserFullName = Splitter.SplitTextByDelimiter(", ", QuoteStyle.None)([User Full Name]) in Text.Combine({Text.Proper(splitUserFullName{1}?), " ", Text.Proper(splitUserFullName{0}?)}), type text),
    #"COLUMN: Due Date" = Table.AddColumn(#"COLUMN: Name", "Due Date", each Date.AddYears([Transcript Completed Date],1)),
    #"MERGE: Site List" = Table.NestedJoin(#"COLUMN: Due Date", {"Site"}, #"Site List", {"SITE"}, "Site List", JoinKind.LeftOuter),
    #"EXPAND: Site List" = Table.ExpandTableColumn(#"MERGE: Site List", "Site List", {"REGIONAL LEADER", "PRIMARY POC", "Regional Leader Alias", "POC Alias"}, {"REGIONAL LEADER", "PRIMARY POC", "Regional Leader Alias", "POC Alias"}),
    #"REPLACE: #NO MATCH" = Table.ReplaceValue(#"EXPAND: Site List","#NO MATCH","Not Listed",Replacer.ReplaceText,{"REGIONAL LEADER", "PRIMARY POC"}),
    #"Column: Manager" = Table.AddColumn(#"REPLACE: #NO MATCH", "Manager", each if [PRIMARY POC] = "Not Listed" then [REGIONAL LEADER] else [PRIMARY POC]),
    #"COLUMN: 30 Days from Due" = Table.AddColumn(#"Column: Manager", "30 Days from Due", each Date.AddDays([Due Date],-30)),
    #"COLUMN: 7 Days from Due" = Table.AddColumn(#"COLUMN: 30 Days from Due", "7 Days from Due", each Date.AddDays([Due Date],-7)),
    #"TYPE: Date" = Table.TransformColumnTypes(#"COLUMN: 7 Days from Due",{{"Due Date", type date}, {"Transcript Completed Date", type date}, {"Transcript Assigned Date", type date}, {"7 Days from Due", type date}, {"30 Days from Due", type date}}),
    #"COLUMN: Today until Due" = Table.AddColumn(#"TYPE: Date", "Today Until Due", each [Due Date] - Date.From(DateTime.LocalNow())),
    #"TYPE: Today until Due" = Table.TransformColumnTypes(#"COLUMN: Today until Due",{{"Today Until Due", type duration}})
in
    #"TYPE: Today until Due"










let
    Source = kNet_FolderDirectory,
    #"QEW xlsx_https://cushwake1 sharepoint com/sites/AmazonBI/Shared Documents/DashboardData/NetworkKPIs/Safety Training/KNet/" = Source{[Name="QEW.xlsx",#"Folder Path"="https://cushwake1.sharepoint.com/sites/AmazonBI/Shared Documents/DashboardData/NetworkKPIs/Safety Training/KNet/"]}[Content],
    #"Imported Excel Workbook" = Excel.Workbook(#"QEW xlsx_https://cushwake1 sharepoint com/sites/AmazonBI/Shared Documents/DashboardData/NetworkKPIs/Safety Training/KNet/"),
    #"RME - Qualified Electrical Work_Sheet" = #"Imported Excel Workbook"{[Item="RME - Qualified Electrical Work",Kind="Sheet"]}[Data],
    #"Removed Top Rows" = Table.Skip(#"RME - Qualified Electrical Work_Sheet",13),
    #"Promoted Headers" = Table.PromoteHeaders(#"Removed Top Rows", [PromoteAllScalars=true]),
    #"COLUMN: Site" = Table.AddColumn(#"Promoted Headers", "Site", each if Text.StartsWith([Location], "V") then "VIR" else [Location])
in
    #"COLUMN: Site"