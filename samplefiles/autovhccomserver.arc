VERSION "4.0"

WINDOW 1 "AutoVHC Communication Server" 200 200 310 138
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmAutoVHCComSer"

    GROUPBOX 10000, "", 5, 8, 305, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclInfo"
    END

    BUTTON 2, "&Close", 127, 105, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnClose"
        SHORTCUE "Terminate the program"
    END

    STATICTEXT 10001, "The AutoVHC communication server is running.  Click on 'Close' button to terminate the program.", 20, 25, 275, 65
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInfo"
    END
END
