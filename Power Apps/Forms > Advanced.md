# Combo Box #
### Advanced >>> Data ###
  - **SharePoint List Choice Column as drop down choices**
    - ```
      Choices(SharePointListDataConnectorHERE.SharePointListChoiceColumnHERE)
      ```
  - **If field is left blank, automatically add in a "Default Value"**
    - ```
      If(ThisItem.ChoiceFieldName.Value=Blank(), {Value: "Default Text"}, ThisItem.ChoiceFieldName)
      ```
# Button.OnSelect #
  - **Button.OnSelect**
    - If the below text input fields are not blank, then the button will Submit the Form. Otherwise, it will change the ShowMessage variable to true.
    - If the ShowMessage variable is true, a textbox with its Visible property set to the ShowMessage variable will appear with your desired message like, "Please fill out all the required fields."
    - ```
      If(!IsBlank(TextInput1.Text) &&
      !IsBlank(TextInput2.Text) &&
      !IsBlank(TextInput3.Text),

      SubmitForm(form),

      UpdateContext({ShowMessage: true}))
      ```
  - **Brief Description**
    - ```
      Code Here
      ```
    - ```
      Alternative Code Here
      ```
  - **Brief Description**
    - ```
      Code Here
      ```
    - ```
      Alternative Code Here
      ```
  - **Brief Description**
    - ```
      Code Here
      ```
    - ```
      Alternative Code Here
      ```

      


___
___
___
      
[Microsoft Docs: Canvas Apps - Control Drop Down](https://docs.microsoft.com/en-us/power-apps/maker/canvas-apps/controls/control-drop-down "Control Drop Down")
      
