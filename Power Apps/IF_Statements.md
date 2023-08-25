# PowerApps - IF Statements
___

If(Hour(Now())<12, "Good Morning, ", Hour(Now())<17, "Good Afternoon, ", "Good Evening, ")& varUsergivenname & ", 
Welcome to your WTC Reference Experience!"

--------------------------------------------------------
If(Dropdown1.Selected.Value = "Inactive",Navigate(Screen3,ScreenTransition.Fade)))
--------------------------------------------------------
If(varLocationsContainerHeight=225, Set(varLocationsContainerHeight, 30), Set(varLocationsContainerHeight, 225))

--------------------------------------------------------

If(FormMode.New,
   DisplayMode.Disabled, 
   DisplayMode.Edit
)

--------------------------------------------------------

If(FormMode.New,
   true,
   false
)
--------------------------------------------------------
If(FormMode.New,
   false,
   true
)
--------------------------------------------------------

If(
   IsBlank(ThisItem.'PO#'),
   RGBA(255,20,20,1)
)

If(ThisItem.'PO#' = Blank(),If(Mod(Value(NoPO_Timer.Text),2)=0, Color!IndianRed,Color!Black),White)
--------------------------------------------------------

If(CheckForApproval_1.Text = "Approved", "Send Email",
   CheckForApproval_1.Text = "Rejected", "Corrections Required", 
   "Awaiting Approval")
--------------------------------------------------------

If(dd_EmailSenderTeam.SelectedText.Value = "GSC", true,false)


--------------------------------------------------------

If(Hour(Now())<12, "Good Morning, ", Hour(Now())<17, "Good Afternoon, ", "Good Evening, ")& varUsergivenname & ", 
Welcome to your WTC Reference Experience!"

--------------------------------------------------------

If(Hour(Now())<12, Background_Day, Hour(Now())<17, Background_Afternoon, Background_Night)

--------------------------------------------------------

If(
    TimeValue(Text(Now()))>=Time(7,00,0)&&TimeValue(Text(Now()))<Time(19,00,0),
    "Day",
    TimeValue(Text(Now()))>=Time(19,00,0)&&TimeValue(Text(Now()))<=Time(23,59,59),
    "Night",
    TimeValue(Text(Now()))>=Time(0,0,0)&&TimeValue(Text(Now()))<Time(7,00,0),
    "Night"
  )
  
--------------------------------------------------------

Or(
    If(
        lbl_WeatherType.Text = "SUNNY" && lbl_DayNight.Text = "Day",
        true,
        false
    ),
    If(
        lbl_WeatherType.Text = "CLEAR" && lbl_DayNight.Text = "Day",
        true,
        false
    ),
    If(
        lbl_WeatherType.Text = "MOSTLY SUNNY" && lbl_DayNight.Text = "Day",
        true,
        false
    ),
    If(
        lbl_WeatherType.Text = "PARTLY SUNNY" && lbl_DayNight.Text = "Day",
        true,
        false
    )
)

//////////////////////////////////////////////////////////////////////////////


Or(
    If(
        lbl_WeatherType.Text = "SUNNY" && lbl_DayNight.Text = "Day",
        true,
        false
    ),
    If(
        lbl_WeatherType.Text = "CLEAR" && lbl_DayNight.Text = "Day",
        true,
        false
    )
)
