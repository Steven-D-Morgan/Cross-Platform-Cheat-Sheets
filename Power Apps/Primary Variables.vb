Set(varMicrosoftUserDisplayName, Office365Users.MyProfile().DisplayName);
Set(varCurrentUser, Office365Users.MyProfile());

Set(varCushmanRed, RGBA(228,0,43,1));
Set(varCushmanDarkRed, RGBA(166,25,46,1));
Set(varCushmanOrange, RGBA(255,103,31,1));
Set(varCushmanDarkGrey, RGBA(105,107,107,1));
Set(varCushmanGrey, RGBA(175,175,175,1));
Set(varCushmanDarkBlue, RGBA(0,56,101,1));
Set(varCushmanBlue, RGBA(0,147,178,1));
Set(varCushmanLightBlue, RGBA(155,211,221,1));
Set(varCushmanLime, RGBA(181,189,0,1));

Set(varNewAuditContainerVisible, false);
Set(varFilterContainerVisible, true);

Set(varLogoCWS, 'C&W_Services_Logo_Color');
Set(varBorderColor, varCushmanDarkRed);

Set(varBrowseScreen_GalleryWidth, 320);
// Browse Screen Canvas & Gallery Height = BrowseContainer.Height
Set(varBrowseScreen_CanvasWidth, 1045);
Set(varBrowseScreen_AnswerLabelHeight, 60);
Set(varBrowseScreen_AnswerLabelWidth, 50);
Set(varBrowseScreen_QuestionLabelHeight, 35);
Set(varBrowseScreen_QuestionLabelWidth, 985);
Set(varBrowseScreen_NoteLabelHeight, 25);
Set(varBrowseScreen_NoteLabelWidth, 945);


Set(varChevronBackgroundColor, varCushmanDarkRed);
Set(varChevronColor, Color.White);
Set(varChevronHoverFillColor, Color.White);
Set(varChevronHoverBackgroundColor, ColorFade(RGBA(56, 96, 178, 1), -20%));

Set(varDropdownFillColor, varCushmanLightBlue);
Set(varDropdownColor, Color.Black);
Set(varDropdownSelectedFillColor, varCushmanDarkBlue);
Set(varDropdownSelectedColor, Color.White);
Set(varDropDownBorderColor, varBorderColor);


Set(varGalleryTemplateSize, 65);
Set(varGalleryFillColor, RGBA(175,175,175,0.3));
Set(varGallerySelectedColor, RGBA(0,56,101,1));
Set(varGalleryBorderThickness, 1);
Set(varGalleryBorderColor, Color.Black);
// GalleryTemplateFillColor: If(ThisItem.IsSelected, varGallerySelectedColor, varGalleryFillColor);

