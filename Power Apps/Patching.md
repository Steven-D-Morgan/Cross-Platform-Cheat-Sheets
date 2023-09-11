# PowerApps - Patching
___
```
Patch(
    GSC_Incidents,
    varRecord,
    Defaults(GSC_Incidents),
    {
        EventStart_DateTime: DateTimeValue(Text(dp_EventStart.SelectedDate) &" "& Text(ddtp_EventStart_Hours.SelectedText.Value) &":"& Text(ddtp_EventStart_Minutes.SelectedText.Value)),
        Status: dd_Status.Selected,
        BuildingLookupID: cb_BuildingSelector.SelectedItems
        
    }
);
Navigate(Home);
```
