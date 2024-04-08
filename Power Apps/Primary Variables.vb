Set(varCushmanRed, RGBA(228,0,43,1));
Set(varCushmanDarkRed, RGBA(166,25,46,1));
Set(varCushmanOrange, RGBA(255,103,31,1));
Set(varCushmanDarkGrey, RGBA(105,107,107,1));
Set(varCushmanGrey, RGBA(175,175,175,1));
Set(varCushmanDarkBlue, RGBA(0,56,101,1));
Set(varCushmanBlue, RGBA(0,147,178,1));
Set(varCushmanLightBlue, RGBA(155,211,221,1));
Set(varCushmanLime, RGBA(181,189,0,1));

Set(varAT&T_Blue, RGBA((6,122,180,1)); 
Set(varAT&T_Orange, RGBA(255,114,0,1)); 

Set(varDarkRoyalBlue, RGBA(2,25,69,1));
Set(varDarkBronzeCoin, RGBA(69,46,2,1)); 

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// General /////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varLogoCWS, 'C&W_Services_Logo_Color');
Set(varBorderColor, varCushmanDarkRed);
Set(varNewAuditContainerVisible, false);
Set(varFilterContainerVisible, true);
Set(varMicrosoftUserDisplayName, Office365Users.MyProfile().DisplayName);
Set(varCurrentUser, Office365Users.MyProfile());

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Gallerys ////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varGalleryTemplateSize, 66);
Set(varGalleryFillColor, RGBA(87,87,87,0.75));
Set(varGallerySelectedColor, RGBA(238,173,14,1)); // Gold
Set(varGalleryBorderThickness, 2);
Set(varGalleryBorderColor, Color.Black);
// GalleryTemplateFillColor: If(ThisItem.IsSelected, varGallerySelectedColor, varGalleryFillColor);
// GalleryIconColor: If(ThisItem.IsSelected, Color.Red,RGBA(64, 255, 0, 1));


////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Browse Screen ///////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varBrowseScreen_GalleryWidth, 320);
// Browse Screen Canvas & Gallery Height = BrowseContainer.Height
Set(varBrowseScreen_CanvasWidth, 1045);
Set(varBrowseScreen_AnswerLabelHeight, 60);
Set(varBrowseScreen_AnswerLabelWidth, 50);
Set(varBrowseScreen_QuestionLabelHeight, 35);
Set(varBrowseScreen_QuestionLabelWidth, 985);
Set(varBrowseScreen_NoteLabelHeight, 25);
Set(varBrowseScreen_NoteLabelWidth, 945);

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Edit/New Screen //////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varNewScreen_LeftContainerTextColor, RGBA(0,0,0,0));
Set(varNewScreen_RightContainerTextColor, Color.Black);

Set(varNewScreen_AnswerDD_Height, 50);
Set(varNewScreen_AnswerDD_Width, 100);
Set(varNewScreen_AnswerDD_BorderColor, varDarkBronzeCoin);
Set(varNewScreen_AnswerDD_BorderThickness, 1);
Set(varNewScreen_AnswerDD_BorderStyle, BorderStyle.Solid);
Set(varEditNewScreen_AnswerDD_FontWeight, FontWeight.Bold);
Set(varNewScreen_AnswerDD_X, 0);
Set(varNewScreen_AnswerDD_HoverFill, RGBA(0, 255, 255, 0.5));
// RGBA(186, 202, 226, 1)

Set(varNewScreen_Question_TextSize, 11);
Set(varNewScreen_Question_TextFont, Font.'Open Sans');
Set(varNewScreen_Question_TextFontWeight, FontWeight.Normal);
Set(varNewScreen_Question_Height, 50);
Set(varNewScreen_Question_Width, 913);

Set(varNewScreen_Notes_HoverFill, RGBA(0, 255, 255, 0.5));
Set(varNewScreen_Notes_Height, 30);
Set(varNewScreen_Notes_Width, 913);
Set(varNewScreen_Notes_X, 100);
Set(varNewScreen_Notes_Font, Font.'Open Sans');
Set(varNewScreen_Notes_FontSize, 11);
Set(varNewScreen_Notes_FontWeight, FontWeight.Normal);

Set(varEditScreen_DeleteIcon_Color, RGBA(255, 0, 0, 1));

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Chevron & Dropdown //////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varChevronBackgroundColor, varDarkBronzeCoin);
Set(varChevronFillColor, Color.White);
Set(varChevronColor, Color.White); //Remove once v2 is live
Set(varChevronHoverFillColor, Color.White);
Set(varChevronHoverBackgroundColor, ColorFade(RGBA(56, 96, 178, 1), -20%));

Set(varDropdownFillColor, varCushmanLightBlue);
Set(varDropdownColor, Color.Black);
Set(varDropdownSelectedFillColor, varCushmanDarkBlue);
Set(varDropdownSelectedColor, Color.White);
Set(varDropDownBorderColor, varBorderColor);

////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
// Default Gallery Selections //////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varLOTO_GalleryFirstItem,First(LockOutTagOut_Gallery.AllItems));
Set(varLOTO_ThisItem, varLOTO_GalleryFirstItem);

Set(varARFH_GalleryFirstItem,First(RoboticsFloorHazards_Gallery.AllItems));
Set(varARFH_ThisItem, varARFH_GalleryFirstItem);

Set(varHK_GalleryFirstItem,First(Housekeeping_Gallery.AllItems));
Set(varHK_ThisItem, varHK_GalleryFirstItem);

Set(varHS_GalleryFirstItem,First(HandSafety_Gallery.AllItems));
Set(varHS_ThisItem, varHS_GalleryFirstItem);

Set(varFLS_GalleryFirstItem,First(FireLifeSafety_Gallery.AllItems));
Set(varFLS_ThisItem, varFLS_GalleryFirstItem);

Set(varTS_GalleryFirstItem,First(ToolSafety_Gallery.AllItems));
Set(varTS_ThisItem, varTS_GalleryFirstItem);

Set(varAL_GalleryFirstItem,First(AerialLift_Gallery.AllItems));
Set(varAL_ThisItem, varAL_GalleryFirstItem);

Set(varCM_GalleryFirstItem,First(ChemicalManagement_Gallery.AllItems));
Set(varCM_ThisItem, varCM_GalleryFirstItem);

Set(varMG_GalleryFirstItem,First(MachineGuarding_Gallery.AllItems));
Set(varMG_ThisItem, varMG_GalleryFirstItem);

Set(varLI_GalleryFirstItem,First(LadderInspection_Gallery.AllItems));
Set(varLI_ThisItem, varLI_GalleryFirstItem);

