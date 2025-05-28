VERSION "4.0"

WINDOW 1 "Import Recalls - Toyota / Lexus / Suzuki" 100 100 415 160
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287286788
    NAME "FrmC004RecallImp"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 125, 130, 75, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 210, 130, 75, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 295, 130, 75, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11000, "", 5, 8, 405, 75
    BEGIN
        NAME "gbxGeneral"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11002, "&Dealer number", 15, 30, 100, 19
    BEGIN
        NAME "txtDealerNumber"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11003, "", 125, 28, 250, 380
    BEGIN
        NAME "lbnDeaNr"
        SHORTCUE "Choose dealer number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11010, "&Import file", 15, 51, 110, 19
    BEGIN
        NAME "txtFileInfo"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11011, "", 125, 49, 250, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Import_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file to import"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11012, "", 378, 49, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png"
        NAME "tbn_SearchFile"
        SHORTCUE "Search for import file"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11040, "Progress:", 17, 100, 75, 19
    BEGIN
        NAME "txtProgress"
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 125, 98
    BEGIN
        NAME "chd_frmProgress"
    END

    TOOLBUTTON 11090, "", 10, 130, 22, 22
    BEGIN
        IMAGEFILE "Butbar022.png"
        NAME "tbnScheduler"
        SHORTCUE "Open the scheduler dialogue"
        FONT "Microsoft Sans Serif" 9
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
