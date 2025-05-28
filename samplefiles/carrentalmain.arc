VERSION "4.0"

WINDOW 1 "Maintenance of Rental Cars" 0 85 1270 770
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    EVENTMASK 12583948
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCarRentMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "B=Car temporary blocked, A=Car has airco, T=Car has towbar, N=Car has navigation" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status Bar"
    END

    TOOLBUTTON 100, "", 63, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        DISABLED
        SHORTCUE "Create a new item"
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
    END

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
    END

    TOOLBUTTON 112, "", 1230, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 1200, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    GROUPBOX 1000, "", -2, 24, 1275, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 11001, "", 5, 37, 1258, 682
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 11002
        COLUMNS 18
        USERSIZE
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 70
        GRIDCOLTITLE 0, "Car / Case"
        GRIDCOLWIDTH 1, 125
        GRIDCOLTITLE 1, "Car number"
        GRIDCOLWIDTH 2, 200
        GRIDCOLTITLE 2, "Car info"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Reg. date"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Act. mileage"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "B"
        GRIDCOLWIDTH 6, 20
        GRIDCOLTITLE 6, "A"
        GRIDCOLWIDTH 7, 20
        GRIDCOLTITLE 7, "T"
        GRIDCOLWIDTH 8, 20
        GRIDCOLTITLE 8, "N"
        GRIDCOLWIDTH 9, 70
        GRIDCOLTITLE 9, "Fuel"
        GRIDCOLTITLE 10, "Day rate"
        GRIDCOLWIDTH 11, 55
        GRIDCOLTITLE 11, "Mil. rate"
        GRIDCOLWIDTH 12, 55
        GRIDCOLTITLE 12, "Costs"
        GRIDCOLWIDTH 13, 60
        GRIDCOLTITLE 13, "Fixed price"
        GRIDCOLTITLE 14, "Free mil."
        GRIDCOLWIDTH 15, 140
        GRIDCOLTITLE 15, "Company"
        GRIDCOLWIDTH 16, 140
        GRIDCOLTITLE 16, "Branch"
        GRIDCOLWIDTH 17, 140
        GRIDCOLTITLE 17, "Department"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarRent"
        CLIENTEDGE
        SHORTCUE "B=Car temporary blocked, A=Car has airco, T=Car has towbar, N=Car has navigation"
    END

    GRID 12001, "", 5, 38, 1260, 682
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 12002
        COLUMNS 21
        USERSIZE
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 70
        GRIDCOLTITLE 0, "Car / Case"
        GRIDCOLWIDTH 1, 150
        GRIDCOLTITLE 1, "Car number"
        GRIDCOLWIDTH 2, 200
        GRIDCOLTITLE 2, "Car info"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Reg. date"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Act. mileage"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "B"
        GRIDCOLWIDTH 6, 20
        GRIDCOLTITLE 6, "A"
        GRIDCOLWIDTH 7, 20
        GRIDCOLTITLE 7, "T"
        GRIDCOLWIDTH 8, 20
        GRIDCOLTITLE 8, "N"
        GRIDCOLWIDTH 9, 115
        GRIDCOLTITLE 9, "Type"
        GRIDCOLWIDTH 10, 75
        GRIDCOLTITLE 10, "Fuel"
        GRIDCOLWIDTH 11, 115
        GRIDCOLTITLE 11, "Car group"
        GRIDCOLWIDTH 12, 115
        GRIDCOLTITLE 12, "Rate group"
        GRIDCOLWIDTH 13, 65
        GRIDCOLTITLE 13, "Day rate"
        GRIDCOLWIDTH 14, 65
        GRIDCOLTITLE 14, "Mil.rate"
        GRIDCOLWIDTH 15, 65
        GRIDCOLTITLE 15, "Costs"
        GRIDCOLWIDTH 16, 65
        GRIDCOLTITLE 16, "Fixed price"
        GRIDCOLWIDTH 17, 65
        GRIDCOLTITLE 17, "Free mil."
        GRIDCOLWIDTH 18, 150
        GRIDCOLTITLE 18, "Company"
        GRIDCOLWIDTH 19, 150
        GRIDCOLTITLE 19, "Branch"
        GRIDCOLWIDTH 20, 150
        GRIDCOLTITLE 20, "Department"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarRentTestDrive"
        CLIENTEDGE
        INVISIBLE
        SHORTCUE "B=Car temporary blocked, A=Car has airco, T=Car has towbar, N=Car has navigation"
    END

    LISTBUTTON 11011, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCarCase"
    END

    LISTBUTTON 11012, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCompany"
    END

    LISTBUTTON 11013, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBranch"
    END

    LISTBUTTON 11014, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFuel"
    END

    LISTBUTTON 11015, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnType"
    END

    LISTBUTTON 11016, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnDepartment"
    END

    TOOLBUTTON 114, "", 179, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        SHORTCUE "Open the details dialogue to maintain blocked periods"
    END

    LISTBUTTON 12003, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCarGroup"
    END

    LISTBUTTON 12004, "", -100, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnRentGroup"
    END

    STATICTEXT 12005, "Car sold ", 37, 730, 125, 20
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKey"
    END

    STATICTEXT 12006, "", 10, 732, 20, 10
    BEGIN
        BACKGROUNDCOLOR RGB(255,188,64)
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtColor"
    END
END

WINDOW 2 "Car rental blocked periods" 100 100 765 420
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287308
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCarRentBlockedPeriods"

    BUTTON 1, "OK", 405, 392, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes "
    END

    BUTTON 2, "Cancel", 490, 392, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    BUTTON 3, "&Edit", 575, 392, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current form"
    END

    BUTTON 4, "&Help", 660, 392, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 11000, "Rental car : ", 10, 10, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRentalCar"
    END

    CUSTOMEDIT 11002, "", 136, 8, 400, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_info"
        CLIENTEDGE
    END

    GRID 11021, "", 10, 35, 723, 350
    BEGIN
        ROWS 100
        COLUMNHEAD 24, 11022
        COLUMNS 5
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Date from"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Time from"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Date to"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Time to"
        GRIDCOLWIDTH 4, 350
        GRIDCOLTITLE 4, "Reason"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclBlockedPeriods"
        CLIENTEDGE
    END

    TOOLBUTTON 11030, "", 712, 35, 22, 22
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    TOOLBUTTON 11031, "", 736, 35, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        SHORTCUE "Create a new item"
    END

    TOOLBUTTON 11032, "", 736, 58, 22, 22
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        SHORTCUE "Delete current item"
    END
END

MENU 101
BEGIN
    MENU-ITEM 30100 "&File"
    BEGIN
        NAME "menFil"
        MENU-ITEM 30010 "E&xit"
        BEGIN
            NAME "menExit"
        END
    END
    MENU-ITEM 30200 "&Edit"
    BEGIN
        NAME "menEditing"
        MENU-ITEM 30201 "&Save\tF2" 332
        BEGIN
            NAME "menSave"
        END
        MENU-ITEM 30202 "&Cancel\tEsc" 27
        BEGIN
            NAME "menCancel"
        END
        MENU-ITEM 30203 "&New\tF3" 333
        BEGIN
            NAME "menNew"
        END
        MENU-ITEM 30204 "&Edit\tF4" 334
        BEGIN
            NAME "menEdit"
        END
        MENU-ITEM 30205 "&Delete\tF5" 335
        BEGIN
            NAME "menDelete"
        END
    END
    MENU-ITEM 30300 "&Program"
    BEGIN
        NAME "menProgram"
        MENU-ITEM 30301 "&Search\tF8" 338
        BEGIN
            NAME "menSearch"
        END
        MENU-ITEM 30303 "&Print\tF9" 339
        BEGIN
            NAME "menPrint"
        END
        MENU-ITEM 30399 "P&rint screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
    END
    MENU-ITEM 30400 "&Windows"
    BEGIN
        NAME "menWindows"
    END
    MENU-ITEM 30500 "&Help"
    BEGIN
        NAME "menHelpIssues"
        MENU-ITEM 30501 "&Help Topics\tF1" 331
        BEGIN
            NAME "menHelp"
        END
        MENU-ITEM 30502 "&Reference Help\tCtrl+F1" 8523
        BEGIN
            NAME "menRefHelp"
        END
        SEPARATOR
        MENU-ITEM 30504 "&About Car IT DMS"
        BEGIN
            NAME "menAbout"
        END
    END
END
