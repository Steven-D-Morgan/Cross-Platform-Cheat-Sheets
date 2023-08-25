# Search
___
Search(
If(ddProjectManager.Selected.Result="All" && ddPO.SelectedText.Value="All",ProjectTrackerApp,
//Filter by project manager
ddProjectManager.Selected.Result<>"All" && ddPO.SelectedText.Value="All",Filter(ProjectTrackerApp,ProjectManagerLookup.Value=ddProjectManager.Selected.Result),
//Filter by PO yes or No
ddProjectManager.Selected.Result="All" && ddPO.SelectedText.Value<>"All",Filter(ProjectTrackerApp,PO=ddPO.Selected.Value),
//Filter by project manager and PO yes or No
ddProjectManager.Selected.Result<>"All" && ddPO.SelectedText.Value<>"All",Filter(ProjectTrackerApp,ProjectManagerLookup.Value=ddProjectManager.Selected.Result && PO=ddPO.Selected.Value)),
SearchBarTextInput.Text,"Title")

