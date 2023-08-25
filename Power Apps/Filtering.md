# PowerApps - Filtering
___

Distinct(Filter('Building List','Global Region'="Domestic",'Building Status'="Active"),Team)
--------------------------------------------------------
Filter(Choices(GSC_Incidents.BuildingLookupTitle),Value in Filter('Building List','Building Status'="Active").Title)

--------------------------------------------------------
Filter('Building List','Building Status'="Active")

--------------------------------------------------------
Filter('Building List','Global Region'="Domestic",'Building Status'="Active",'City, State'<>"Washington, DC",Code<>"ON", Code<>"OK", Code<>"PE", Code<>"PF",Team = TeamDD.Selected.Result)

--------------------------------------------------------
Filter('Building List','Global Region'="Domestic",'Building Status'="Active",'City, State'<>"Washington, DC",Code<>"ON", Code<>"OK", Code<>"PE", Code<>"PF",Team = TeamDD.Selected.Result)

--------------------------------------------------------
ClearCollect(Buildings,Filter('Building List', 'Building Status'="Active",Not(IsBlank(ProjectsCode))))

--------------------------------------------------------
ClearCollect(colBuildings,Filter('Building List', 'Building Status'="Active"));

--------------------------------------------------------
SortByColumns(
    Filter(
        [@ProjectTrackerApp],
        StartsWith(
            Title,
            BS_SearchBarTextInput.Text
        )
    ),
    "Title",
    If(
        SortDescending1,
        Descending,
        Ascending
    )
)
--------------------------------------------------------

Filter(
    [@ProjectTrackerApp],
        ddPO.Selected.Result=Blank() Or ddPO.SelectedText.Value,
        ddProjectManager.Selected.Value=Blank() Or ddProjectManager.SelectedText.Value
)

--------------------------------------------------------
Filter(
    Emails_GSC_NoApproval,
    inp_EmailSearchBox.Text in Title
)
