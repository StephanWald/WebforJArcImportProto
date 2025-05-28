VERSION "4.0"

WINDOW 1 "Create conversion proposal" 100 100 356 172
BEGIN
    ICON "Carit.ico"
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287500
    NAME "frmCreateConvProp"
    DIALOGBEHAVIOR
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 11, "OK", 144, 140, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Build conversion proposal and close this dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 12, "Cancel", 214, 140, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Rejects unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 13, "&Help", 284, 140, 60, 22
    BEGIN
        NAME "pgnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 1, "Default employee", 8, 12, 90, 19
    BEGIN
        NAME "txtEmployee"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 2, "", 112, 12, 236, 380
    BEGIN
        NAME "lbnEmployee"
        SHORTCUE "Choose the default employee"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 3, "", 8, 40, 340, 88
    BEGIN
        NAME "gbxInfo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 4, "This program will create a conversion proposal. Previously entered conversion data will be lost. For the users for which no employee exists, an employee will be created based on the above selected employee.", 12, 56, 324, 64
    BEGIN
        NAME "txtInfo"
        FONT "Microsoft Sans Serif" 9
    END
END
