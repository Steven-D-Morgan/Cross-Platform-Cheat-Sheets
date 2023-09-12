# PowerApps - Office365 Users
___

Office365Users.SearchUser({searchTerm:ComboBox1.SearchText,top:10})

Distinct(Filter('SP List',choiceColumn.Value="desiredChoice"),'personColumn'.DisplayName).Result

If(Office365Users.MyProfile().GivenName = "Gregory", "Welcome, " & "Scott", "Welcome, " & Office365Users.MyProfile().GivenName)

Office365Users.SearchUser({searchTerm:varMicrosoftUser.DisplayName})