# PowerApps - Office365 Users
___
Office365Users.SearchUser({searchTerm:cb_LOTO_Auditor.SearchText,top:5})
Office365Users.SearchUser({searchTerm:ComboBox1.SearchText,top:10})

Distinct(Filter('SP List',choiceColumn.Value="desiredChoice"),'personColumn'.DisplayName).Result

If(Office365Users.MyProfile().GivenName = "Gregory", "Welcome, " & "Scott", "Welcome, " & Office365Users.MyProfile().GivenName)






DEFAULT_SELECTED_ITEMS -----> Office365Users.SearchUser({searchTerm:varFLS_ThisItem.AuditorName,top:1})

ITEMS -----> Office365Users.SearchUser({searchTerm:cb_Auditor_14.SearchText,top:5})