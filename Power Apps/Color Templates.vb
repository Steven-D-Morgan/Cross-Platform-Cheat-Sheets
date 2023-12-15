# PowerApps: Color Templates
___
ColorFade(RGBA(73, 130, 5, 1), -30%)
ColorFade(varCushmanRed, 80%)
--------------------------------------------------------
If(ThisItem.Price > 5, Color.Red, Color.Green)
ColorFade(Self.Fill, -75%)

//////////////////////////////////////////////////////////////////////////////

If(Self.Text = "Yes", RGBA(54, 176, 75, 1),
   Self.Text = "No", RGBA(255, 0, 0, 1), 
   RGBA(0, 0, 0, 1))


If(Self.Text = "Yes", RGBA(232, 244, 217, 1),
   Self.Text = "No", RGBA(238, 204, 204, 1), 
   RGBA(0, 0, 0, 1))

//////////////////////////////////////////////////////////////////////////////

If(ThisItem.IsSelected, varGallerySelectedColor, varGalleryFillColor)
If(ThisItem.IsSelected, Color.White, Color.Black)

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

//////////////////////////////////////////////////////////////////////////////

If(ThisItem.IsSelected, RGBA(255,255,0,0.4), Color.White)