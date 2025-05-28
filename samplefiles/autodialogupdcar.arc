VERSION "4.0"

WINDOW 1 "Update car info from Auto Dialog" 315 145 340 355
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    RADIOGROUP 11010, 11020
    RADIOGROUP 11230, 11240
    NAME "FrmUpdCarInfofromAD"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 122, 319, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 192, 319, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 262, 319, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 122, 287
    BEGIN
        NAME "chd_frmProgress"
    END

    GROUPBOX 11001, "Request via", 5, 8, 330, 65
    BEGIN
        NAME "gbxSelect"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11010, "&License number", 15, 25, 300, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnLicense"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11020, "&Chassis number", 15, 45, 300, 19
    BEGIN
        NAME "rbnChassisnr"
        DISABLED
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11101, "Selection", 5, 75, 330, 75
    BEGIN
        NAME "gbxSelectinf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11140, "&From license", 15, 95, 100, 19
    BEGIN
        NAME "txtFrom car"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11150, "", 120, 93, 100, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "ine_car_from"
        CLIENTEDGE
        SHORTCUE "Enter the first license in the range"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11155, "", 225, 93, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnItem_from"
        SHORTCUE "Search for an item"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11160, "&To license", 15, 115, 100, 19
    BEGIN
        NAME "txtTo_car"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11170, "", 120, 113, 100, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "ine_car_to"
        CLIENTEDGE
        SHORTCUE "Enter the last license for the range"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11175, "", 225, 113, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnItem_to"
        SHORTCUE "Search for an item"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11201, "", 5, 154, 330, 99
    BEGIN
        NAME "gbxPrintinfo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11210, "Type of &form", 15, 174, 100, 19
    BEGIN
        NAME "txtForm"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11220, "", 120, 172, 200, 380
    BEGIN
        NAME "lbnForm"
        SHORTCUE "Choose the type of form"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11230, "&Print ", 15, 192, 100, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnPrint"
        SHORTCUE "Select to print"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11240, "&View ", 15, 214, 100, 19
    BEGIN
        GROUP
        NAME "rbnView"
        SHORTCUE "Select to view"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11250, "", 120, 194, 200, 380
    BEGIN
        NAME "lbnPrintDevice"
        SHORTCUE "Choose the printing device"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11260, "", 120, 216, 200, 380
    BEGIN
        NAME "lbnViewDevice"
        INVISIBLE
        SHORTCUE "Choose the viewing device"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 11300, "To terminate this program set this control to checked", 17, 259, 310, 19
    BEGIN
        NAME "cbxTerminate"
        SHORTCUE "Check to terminate this batch process"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11400, "Progress :", 17, 289, 100, 19
    BEGIN
        NAME "txtProgress"
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 101 0 0 200 19
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwProgress"

    EDIT 100, "", 0, 0, 200, 19
    BEGIN
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END
END
