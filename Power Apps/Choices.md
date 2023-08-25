# PowerApps - Choices
___

SortByColumns(Filter([@ProjectTrackerApp], StartsWith(Title, BS_SearchBarTextInput.Text)), "Title", If(SortDescending1, Descending, Ascending))

Choices(GSC_Incidents.BuildingLookupTitle)

Distinct(Filter('SP List',choiceColumn.Value="desiredChoice"),'personColumn'.DisplayName).Result
