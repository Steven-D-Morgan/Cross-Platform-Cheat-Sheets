# PowerApps - Navigation
___

OnSelect: Navigate(BuildingDetailsView, ScreenTransition.Fade,{selectedItem: Gallery_BuildingSearchResult.Selected})

Add a Gallery to the left side of the screen
OnSelect of an icon in the Gallery; Set(varSelectedItem, ThisItem)
This will save the entire record as a variable
Add a Form to the right side of the screen
Set the Form DataSource property to your Sharepoint list
Set the Form Item proptery to varSelectedRecord



If(Dropdown1.Selected.Value = "Inactive",Navigate(Screen3,ScreenTransition.Fade)))


Back()

Back( ScreenTransition.Cover )

Launch(
    "https://zeitgeistcode.com", 
    { 
         s: "online converter",
         anotherone: "value"     
    }
); 
