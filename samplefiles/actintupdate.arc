VERSION "4.0"

WINDOW 1 "Activity Interval Update" 200 140 450 140
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 62915588
    RADIOGROUP 100, 101
    NAME "frmActIntUpdate"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "&Close", 180, 105, 75, 22
    BEGIN
        NAME "pbnClose"
        SHORTCUE "Close program"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Update", 265, 105, 75, 22
    BEGIN
        NAME "pbnUpdate"
        SHORTCUE "Start update"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 350, 105, 75, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 100, "&All interval codes", 15, 15, 125, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnAllIntervals"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 101, "&Interval code", 15, 35, 125, 19
    BEGIN
        GROUP
        NAME "rbnInterval"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 102, "", 150, 33, 275, 380
    BEGIN
        NAME "lbnInterval"
        SHORTCUE "Select interval"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 105, "Progress:", 17, 70, 75, 19
    BEGIN
        NAME "txtProgress"
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 150, 68
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
