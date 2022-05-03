# BUTTONS #
### On Select ###
- Description
```
UpdateContext({locShowSpinner: true});
Patch(
    Logbook_Incidents,
    Defaults(Logbook_Incidents),
    {
        ReportedBy: ReportedByInput_1.Text,
        Event_Start_Date: EventDate_Input.SelectedDate,
        Event_Start_Time: EventTime_Input.Text,
        AlarmType: AlarmType.Text,

      'Building(s)_Linked': BuildingSelect_Input_1.SelectedItems,

       BuildingNameText:BuildingTextInput_1.Text,
        BuildingTeam: BuildingTeamInput_1.Text,

        Planon: WorkOrder_Input_1.Text,
        Location: Location_Input_1.Text,
        Status: {Value: Status_Input.Selected.Value},
        SpecificIssues: {Value:SpecificIssueInput.Selected.Value},

        //C&W Technician
        Tech_Dispatch_Name: TechName_Input.Text,
        Tech_Dispatch_Time: TechTime_Input.Text,
        Tech_Dispatch_Date: EventDate_Input.SelectedDate,

        //C&W Management
        CW01_Manager: {Value: CW01_Input.Selected.Value},
        CW02_Manager: {Value: CW02_Input.Selected.Value},
        CW03_Manager: {Value: CW03_Input.Selected.Value},
        CW01_Date: EventDate_Input.SelectedDate,
        CW02_Date: EventDate_Input.SelectedDate,
        CW03_Date: EventDate_Input.SelectedDate,
        CW01_Time: CW01Time_Input.Text,
        CW02_Time: CW02Time_Input.Text,
        CW03_Time: CW03Time_Input.Text,

        //VG Management
        VG01_Manager: {Value: VG01_Input.Selected.Value},
        VG02_Manager: {Value: VG02_Input.Selected.Value},
        VG03_Manager: {Value: VG03_Input.Selected.Value},
        VG01_Date: EventDate_Input.SelectedDate,
        VG02_Date: EventDate_Input.SelectedDate,
        VG03_Date: EventDate_Input.SelectedDate,
        VG01_Time: VG01Time_Input.Text,
        VG02_Time: VG02Time_Input.Text,
        VG03_Time: VG03Time_Input.Text,

        //GSC Manager
        GSCManager: {Value: GSCManager_Input1.Selected.Value},
        GSC_Manager_Date: EventDate_Input.SelectedDate,
        GSC_Manager_Time: GCSTime_Input.Text,

        //Assorted Others
        Emails: Email_Input.Text,
        Initial_Email_Date:EventDate_Input.SelectedDate,
        Update_Email_Date:EventDate_Input.SelectedDate,
        Initial_Email_Time: EmailTime_Input.Text,
        Source: Source_Input.Text,
        Subtype: {Value: CatSubtype_Input.Selected.Value},

        Title: Title_Input.Text,
        Project_Related: {Value: DDProjectRelated_1.Selected.Value},
        Category: {Value: CatType_Input.Selected.Value},
        Event_Incident: {Value: EventInc_Input_1.Selected.Value},

         //notifyinfo
         CW01_Result: CWResult_1.Text,
         CW02_Result: CWResult_2.Text,
         CW03_Result: CWResult_3.Text,
         VG01_Result: VGResult_1.Text,
         VG02_Result: VGResult_2.Text,
         VG03_Result: VGResult_3.Text,
         GSC_Manager_Result: GSCResult.Text
    }
);

//reset fields for next New!
Set(ResetTime, true);Set(ResetInputFields, true);
Reset(CW02_Input);
Reset(CW03_Input);
UpdateContext( {CWTime1: "" } );
UpdateContext( {CWTime2: "" } );
UpdateContext( {CWTime3: "" } );
UpdateContext( {VGTime1: "" } );
UpdateContext( {VGTime2: "" } );
UpdateContext( {VGTime3: "" } );
Reset(BuildingSelect_Input_1);
Reset(SpecificIssueInput);

UpdateContext({locShowSpinner: false});
Navigate(IncFormsEdit);
Set(varRecord, Last(Logbook_Incidents));

```
