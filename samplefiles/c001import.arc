VERSION "4.0"

WINDOW 1 "Import Peugeot Recall Campaigns" 100 100 415 180
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287286788
    NAME "FrmC001Import"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 125, 145, 75, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "Cancel", 210, 145, 75, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 295, 145, 75, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11000, "", 5, 8, 405, 90
    BEGIN
        NAME "gbxGeneral"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11002, "&Make code", 15, 30, 110, 19
    BEGIN
        NAME "txtMakecode"
        SHORTCUE "Reference for this receipt"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11003, "", 125, 28, 175, 380
    BEGIN
        GROUP
        NAME "lbnMake"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Choose the make code"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11010, "&Chassis number file", 15, 51, 110, 19
    BEGIN
        NAME "txtChaFile"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11011, "", 125, 49, 250, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "VIN_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file with chassis numbers to import"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11012, "", 378, 49, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png"
        NAME "tbn_SearchVIN"
        SHORTCUE "Search for import file"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11016, "Campaign &rules file", 15, 73, 110, 19
    BEGIN
        NAME "txtRuleFile"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11017, "", 125, 69, 250, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Rule_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file with the campaign rules to import"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11018, "", 378, 69, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png"
        NAME "tbn_SearchRules"
        SHORTCUE "Search for import file"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11050, "Progress:", 15, 110, 100, 19
    BEGIN
        NAME "txtProgress"
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 125, 108
    BEGIN
        NAME "chd_frmProgress"
    END
END

CHILD-WINDOW 101 0 0 275 19
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 0
    NAME "chd_wdwProgress"

    EDIT 100, "", 0, 0, 275, 19
    BEGIN
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END
END
