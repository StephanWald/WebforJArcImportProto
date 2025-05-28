VERSION "4.0"

WINDOW 1 "Calendar" 100 100 245 245
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    VSCROLLBAR
    EVENTMASK 2196766732
    NAME "frmCalendar"

    GRID 10111, "Grid", 10, 34, 220, 163
    BEGIN
        ROWS 5
        COLUMNS 3
        HORIZLINES
        VERTLINES
        NAME "gclMonthView"
    END

    TOOLBUTTON 10105, "", 170, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm007.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCalPrev"
        SHORTCUE "Click to show the previous month"
    END

    TOOLBUTTON 10106, "", 190, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm008.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCalNext"
        SHORTCUE "Click to show the next month"
    END

    LISTBUTTON 10101, "", 10, 10, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMonth"
        SHORTCUE "Choose the month"
    END

    LISTBUTTON 10102, "", 111, 10, 56, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnYear"
        SHORTCUE "Choose the month"
    END

    TOOLBUTTON 10107, "", 210, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm060.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnActDate"
        SHORTCUE "Click to jump to todays day/week"
    END

    BUTTON 10190, "&OK", 101, 213, 60, 22
    BEGIN
        NAME "pbnOK"
        SHORTCUE "Click to return and take over the selected date"
    END

    BUTTON 10191, "&Cancel", 171, 213, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Click to return without accepting the selected date"
    END
END

WINDOW 2 "Calendar" 100 100 1000 400
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    NAME "frmCalApp"

    GRID 20111, "Grid", 10, 37, 220, 183
    BEGIN
        ROWS 5
        COLUMNS 3
        HORIZLINES
        VERTLINES
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclMonthView"
    END

    TOOLBUTTON 20105, "", 170, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm007.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCalPrev"
        SHORTCUE "Click to show the previous month"
    END

    TOOLBUTTON 20106, "", 190, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm008.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCalNext"
        SHORTCUE "Click to show the next month"
    END

    LISTBUTTON 20101, "", 10, 10, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMonth"
        SHORTCUE "Choose the month"
    END

    LISTBUTTON 20102, "", 111, 10, 56, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnYear"
        SHORTCUE "Choose the month"
    END

    GROUPBOX 20120, "Planned appointments", 238, 10, 754, 378
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxConPlan"
    END

    TOOLBUTTON 20107, "", 210, 10, 19, 19
    BEGIN
        IMAGEFILE "Butfrm060.png"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnActDate"
        SHORTCUE "Click to jump to todays day/week"
    END

    GRID 20121, "", 252, 30, 730, 348
    BEGIN
        ROWS 99
        COLUMNHEAD 19, 20122
        COLUMNS 4
        VSCROLLBAR
        GRIDCOLWIDTH 0, 60
        GRIDCOLTITLE 0, "Time from"
        GRIDCOLWIDTH 1, 60
        GRIDCOLTITLE 1, "Time to"
        GRIDCOLWIDTH 2, 200
        GRIDCOLTITLE 2, "Appointment type"
        GRIDCOLWIDTH 3, 390
        GRIDCOLTITLE 3, "Planned activity"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPlanApp"
        CLIENTEDGE
        SHORTCUE "Planned appointments on the selected day"
    END

    BUTTON 20190, "&OK", 91, 245, 60, 22
    BEGIN
        NAME "pbnOK"
        SHORTCUE "Click to return and take over the selected date"
    END

    BUTTON 20191, "&Cancel", 161, 245, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Click to return without accepting the selected date"
    END

    CUSTOMEDIT 20192, "", 10, 365, 222, 19
    BEGIN
        IGNORETABS
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "EmpName"
        CLIENTEDGE
    END
END
