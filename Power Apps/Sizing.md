# PowerApps - Sizing
___
App.Width-(DataCardValue9.X*2)




Width = Max(App.Width, If(App.Width < App.Height, App.DesignWidth, App.DesignHeight))

Height = Max(App.Height, If(App.Width < App.Height, App.DesignHeight, App.DesignWidth))

Parent.Width *
Switch(
    Parent.Size,
    ScreenSize.Small, 0.5,
    ScreenSize.Medium, 0.3,
    0.25
)
ScreenSize.Small	1	Phone
ScreenSize.Medium	2	Tablet, held vertically
ScreenSize.Large	3	Tablet, held horizontally
ScreenSize.ExtraLarge	4	Desktop computer
