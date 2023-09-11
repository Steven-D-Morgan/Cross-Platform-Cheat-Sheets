# PowerApps: Color Templates
___
ColorFade(RGBA(73, 130, 5, 1), -30%)


--------------------------------------------------------
If(ThisItem.Price > 5, Color.Red, Color.Green)
ColorFade(Self.Fill, -75%)

//////////////////////////////////////////////////////////////////////////////

If(EA_ApprovalStatus.Text = "Approved", RGBA(54, 176, 75, 1),
   EA_ApprovalStatus.Text = "Rejected", RGBA(255, 0, 0, 1), 
   RGBA(0, 0, 0, 1))

//////////////////////////////////////////////////////////////////////////////

If(
    Value(lbl_HiddenWeatherTemperature.Text) <= 32,
    Color.DarkBlue,
    Value(lbl_HiddenWeatherTemperature.Text) <= 59,
    Color.Blue,
    Value(lbl_HiddenWeatherTemperature.Text) <= 70,
    Color.Aqua,
    Value(lbl_HiddenWeatherTemperature.Text) <= 75,
    Color.Green,
    Value(lbl_HiddenWeatherTemperature.Text) <= 78,
    Color.Orange,
    Value(lbl_HiddenWeatherTemperature.Text) <= 85,
    Color.OrangeRed,
    Value(lbl_HiddenWeatherTemperature.Text) <= 90,
    Color.Red,
    Color.Black
)
//////////////////////////////////////////////////////////////////////////////

If(
    Value(lbl_HiddenWeatherTemperature.Text) > 30,
    Color.Red,
    Color.Black
)

//////////////////////////////////////////////////////////////////////////////


If(Hour(Now())<12, varDayTextColor, Hour(Now())<16, varAfternoonTextColor, varNightTextColor)

//////////////////////////////////////////////////////////////////////////////

If(
    Value(lbl_HiddenWeatherHumidity.Text) <= 50,
    Color.Green,
    Value(lbl_HiddenWeatherHumidity.Text) <= 60,
    Color.DarkBlue,
    Value(lbl_HiddenWeatherHumidity.Text) <= 70,
    Color.Blue,
    Value(lbl_HiddenWeatherHumidity.Text) <= 80,
    Color.Aqua,
    Color.Black
)