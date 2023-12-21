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

Set(varGalleryTemplateSize, 55);
Set(varGalleryFillColor, RGBA(87,87,87,0.75));
Set(varGallerySelectedColor, RGBA(238,173,14,1)); // Gold
Set(varGalleryBorderThickness, 2);
Set(varGalleryBorderColor, Color.Black);
// GalleryTemplateFillColor: If(ThisItem.IsSelected, varGallerySelectedColor, varGalleryFillColor);
// GalleryIconColor: If(ThisItem.IsSelected, Color.Red,RGBA(64, 255, 0, 1))

////////////////////////////////////////////////////////////////////////////
// Chevron & Dropdown //////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varChevronBackgroundColor, varGalleryFillColor);
Set(varChevronColor, Color.White);
Set(varChevronHoverFillColor, Color.White);
Set(varChevronHoverBackgroundColor, ColorFade(RGBA(56, 96, 178, 1), -20%));

Set(varDropdownFillColor, varCushmanLightBlue);
Set(varDropdownColor, Color.Black);
Set(varDropdownSelectedFillColor, varCushmanDarkBlue);
Set(varDropdownSelectedColor, Color.White);
Set(varDropDownBorderColor, varBorderColor);

////////////////////////////////////////////////////////////////////////////
// Default Gallery Selections //////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////
Set(varLOTO_GalleryFirstItem,First(LOTO_Gallery_1.AllItems));
Set(varLOTO_ThisItem, varLOTO_GalleryFirstItem);

Set(varARFH_GalleryFirstItem,First(ARFH_Gallery.AllItems));
Set(varARFH_ThisItem, varARFH_GalleryFirstItem);

Set(varHK_GalleryFirstItem,First(HK_Gallery.AllItems));
Set(varHK_ThisItem, varHK_GalleryFirstItem);

Set(varHS_GalleryFirstItem,First(HS_Gallery.AllItems));
Set(varHS_ThisItem, varHS_GalleryFirstItem);

Set(varFLS_GalleryFirstItem,First(FLS_Gallery.AllItems));
Set(varFLS_ThisItem, varFLS_GalleryFirstItem);

Set(varTS_GalleryFirstItem,First(TS_Gallery.AllItems));
Set(varTS_ThisItem, varTS_GalleryFirstItem);

Set(varAL_GalleryFirstItem,First(AL_Gallery.AllItems));
Set(varAL_ThisItem, varAL_GalleryFirstItem);

Set(varCM_GalleryFirstItem,First(CM_Gallery.AllItems));
Set(varCM_ThisItem, varCM_GalleryFirstItem);

Set(varMG_GalleryFirstItem,First(MG_Gallery.AllItems));
Set(varMG_ThisItem, varMG_GalleryFirstItem);

Set(varLI_GalleryFirstItem,First(LI_Gallery.AllItems));
Set(varLI_ThisItem, varLI_GalleryFirstItem);

////////////////////////////////////////////////////////////////////////////
