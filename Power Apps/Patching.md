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
___
```
Patch(
    SafetyAuditorApp_Housekeeping,
    varHK_ThisItem,
    {
        AuditorName: Left(cb_HK_Auditor_1.Selected.DisplayName, Len(cb_HK_Auditor_1.Selected.DisplayName) - 4),
        AuditorEmail: cb_HK_Auditor_1.Selected.Mail,
        AuditDate: dp_HK_AuditDate_1.SelectedDate,
        Site: cb_ARFH_SiteSelector_1.Selected.SITE,
        SiteAddress: cb_ARFH_SiteSelector_1.Selected.ADDRESS,
        Q01: dd_HK_Q01_1.SelectedText.Value,
        Q02: dd_HK_Q02_1.SelectedText.Value,
        Q03: dd_HK_Q03_1.SelectedText.Value,
        Q04: dd_HK_Q04_1.SelectedText.Value,
        Q05: dd_HK_Q05_1.SelectedText.Value,
        Q06: dd_HK_Q06_1.SelectedText.Value,
        Q07: dd_HK_Q07_1.SelectedText.Value,
        Q08: dd_HK_Q08_1.SelectedText.Value,
        Q09: dd_HK_Q09_1.SelectedText.Value,
        Q10: dd_HK_Q10_1.SelectedText.Value
    }
);
Patch(
    SafetyAuditorApp_Housekeeping,
    varHK_ThisItem,
    HK_AttachmentForm.Updates
);
Navigate(HK_BrowseScreen);
```