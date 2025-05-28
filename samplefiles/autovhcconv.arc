VERSION "4.0"

WINDOW 1 "Convert the AutoVHC related tables" 5 84 511 130
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAutoVhcConv"

    BUTTON 3, "&Close", 430, 93, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnClose"
        SHORTCUE "Close the program"
    END

    STATICTEXT 12002, "This program will convert the CWORDIMPLINE table (only the reocords used for AutoVHC) to the AUTOVHCHEA and AUTOVHCLINE.", 11, 10, 485, 32
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDesc"
    END

    BUTTON 1, "&Start", 360, 93, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnStart"
        SHORTCUE "Click to start converting the AutoVHC tables"
    END

    STATICTEXT 12080, "Progress :", 10, 54, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRecordCounter"
    END

    CHILD-WINDOW 101, 12081, 127, 52
    BEGIN
        NAME "chd_frmProgress" 
    END
END

CHILD-WINDOW 101 0 0 361 40
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwProgress"

    EDIT 100, "", 0, 0, 360, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
    END

    CUSTOMEDIT 101, "", 0, 19, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtRecordCount"
        CLIENTEDGE
    END
END
