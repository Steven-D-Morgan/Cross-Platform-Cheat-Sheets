# PowerApps - General
___

Hour(Now())
Minute(Now())
Today(Now())


"Hello, " & Office365Users.MyProfile().GivenName & "!"


Concat(ThisItem.BuildingLookupTitle, Text(Value) & ", ")


Distinct(Email_Stationaries,SendTeam)


If(TechTime_Input.Text = Blank(),If(Mod(Value(Timer1_1.Text),2)=0, Color!IndianRed,Color!Black),White)





If(
    Navigate(
        Home_Screen,
        ScreenTransition.Fade
    ),
    Navigate(RoomReadiness_Screen)
)





OPEN AN EXCEL FILE
Launch("https://thevanguardgroup.sharepoint.com/sites/Cushman-Wakefield/Workplace%20Experience/Loop_v2.xlsx?d=w9ee27bdd36eb4e0ab3c7a178a5c8860b&csf=1&web=1&e=l8H8i9")


<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d172770.85514680235!2d-111.92469214189454!3d33.46670648649417!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b08d9a7772c97%3A0x26d2e412188fe618!2sScottsdale%2C%20AZ!5e0!3m2!1sen!2sus!4v1658953650485!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>


OPEN WEB URL
If(
    Navigate(
        Home_Screen,
        ScreenTransition.Fade
    ),
Launch(
    "https://www.Google.com"
)




NAVIGATE TO A DIFFERENT POWER APP ALTOGETHER
If(
    Navigate(
        Splash,
        ScreenTransition.Fade
    ),
    Launch(
    "https://apps.powerapps.com/play/0fa3d14f-4cbd-4881-a3db-2f406984b7f5?tenantId=d3a74ac8-efe4-4fe8-b707-b1bf8c6a25bd", 
    {},
    LaunchTarget.Replace 
    );
)
