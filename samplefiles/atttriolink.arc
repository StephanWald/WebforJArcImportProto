VERSION "4.0"

WINDOW 1 "" 0 0 100 100
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 62915588
    NAME "frmAttTrioLinkDummy"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 2, "&Cancel", 12, 42, 75, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Close program"
        FONT "Microsoft Sans Serif" 9
    END
END
