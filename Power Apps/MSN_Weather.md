# PowerApps - MSN Weather
___

Set(UserWeather,MSNWeather.TodaysForecast(Label44_2.Text,"Imperial"));
Set(DailyWeatherSummary, UserWeather.responses.daily.day.summary);
Set(UserWeatherTomorrow,MSNWeather.TomorrowsForecast(Label44_2.Text,"Imperial"));

"Weather Forecast for "& Concatenate(Office365Users.MyProfileV2().city,", ",Office365Users.MyProfileV2().state)

Set(UserWeather,MSNWeather.TodaysForecast(Label44_2.Text,"Imperial"));
Set(DailyWeatherSummary, UserWeather.responses.daily.day.summary);
Set(UserWeatherTomorrow,MSNWeather.TomorrowsForecast(Label44_2.Text,"Imperial"));
Set(DailyWeatherTomorrowSummary, UserWeatherTomorrow.responses.daily.day.summary);
Set(DailyRainChance,UserWeather.responses.daily.day.precip);
Set(DailyRainChanceTomorrow,UserWeatherTomorrow.responses.daily.day.precip);
Set(DailyWeatherNightSummary, UserWeather.responses.daily.night.summary);
Set(CurrentSky,UserWeather.responses.daily.day.sky);
Set(CurrentDescription,UserWeather.responses.daily.day.cap);
Set(varShowWeather,false);

If(IsMatch(Label4.Text,"sun",MatchOptions.Contains& MatchOptions.IgnoreCase),day,IsMatch(Label4.Text,"cloud",MatchOptions.Contains&MatchOptions.IgnoreCase),cloudy,IsMatch(Label4.Text,"snow",MatchOptions.Contains&MatchOptions.IgnoreCase),'snowy-5',IsMatch(Label4.Text,"rain",MatchOptions.Contains&MatchOptions.IgnoreCase),'rainy-6', weather)

UpdateContext(
    {
        WeatherForecast: MSNWeather.CurrentWeather(
            dd_Location.Selected.City0,
            "Imperial"
        )
    }
);
