VERSION "4.0"

WINDOW 1 "Activity Interval Maintenance" 5 85 385 330
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActIntMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status Bar"
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes "
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

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete the current item"
    END

    TOOLBUTTON 113, "", 150, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END

    TOOLBUTTON 114, "", 315, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 115, "", 345, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    GROUPBOX 1000, "", -2, 24, 395, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 1001, "", 5, 36, 373, 300
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 1002
        COLUMNS 2
        USERSIZE
        VSCROLLBAR
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 300
        GRIDCOLTITLE 1, "Description"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclActIntMaint"
        CLIENTEDGE
    END
END

WINDOW 2 "Activity Interval Details" 200 140 383 500
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141060
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActIntDet"

    BUTTON 1, "&OK", 87, 460, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "&Cancel", 157, 460, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Edit", 227, 460, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
    END

    BUTTON 4, "Hel&p", 297, 460, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 2000, "Interval ID:", 20, 10, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtID"
    END

    CUSTOMEDIT 2001, "", 130, 8, 45, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Act_int_Id"
        CLIENTEDGE
    END

    STATICTEXT 2004, "&Description", 20, 31, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescr"
    END

    INPUTE 2005, "", 130, 29, 225, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 35
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_descr"
        CLIENTEDGE
        SHORTCUE "Enter a description"
    END

    GROUPBOX 2010, "Interval period -1-", 5, 50, 365, 94
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInterval1"
    END

    STATICTEXT 2011, "C&alculate month via", 20, 70, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCalcMonthVia1"
    END

    LISTBUTTON 2012, "", 130, 68, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAct_int_via_1"
        SHORTCUE "Choose the first calculation value"
    END

    STATICTEXT 2015, "&Number of months", 20, 92, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMonth1"
    END

    INPUTN 2016, "", 130, 90, 25, 19
    BEGIN
        MASK "###"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_month_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the first number of months"
    END

    STATICTEXT 2017, "&Miles", 20, 113, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMiles1"
    END

    INPUTN 2018, "", 130, 111, 50, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_mil_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the first number of miles/kilometres"
    END

    GROUPBOX 2020, "Interval period -2-", 5, 145, 365, 94
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInterval2"
    END

    STATICTEXT 2021, "Calc&ulate month via", 20, 165, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCalcVia2"
    END

    LISTBUTTON 2022, "", 130, 163, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAct_int_via_2"
        DISABLED
        SHORTCUE "Choose the second calculation value"
    END

    STATICTEXT 2025, "Num&ber of months", 20, 187, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMonth2"
    END

    INPUTN 2026, "", 130, 185, 25, 19
    BEGIN
        MASK "###"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_month_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the second number of months"
    END

    STATICTEXT 2027, "M&iles", 20, 209, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMiles2"
    END

    INPUTN 2028, "", 130, 207, 50, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_mil_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the second number of miles/kilometres"
    END

    GROUPBOX 2030, "Interval period -3-", 5, 240, 365, 94
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInterval3"
    END

    STATICTEXT 2031, "Calculate mont&h via", 20, 260, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCalcVia3"
    END

    LISTBUTTON 2032, "", 130, 258, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAct_int_via_3"
        DISABLED
        SHORTCUE "Choose the third calculation value"
    END

    STATICTEXT 2035, "Number o&f months", 20, 282, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMonth3"
    END

    INPUTN 2036, "", 130, 280, 25, 19
    BEGIN
        MASK "###"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_month_3"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the third number of months"
    END

    STATICTEXT 2037, "Mi&les", 20, 304, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMiles3"
    END

    INPUTN 2038, "", 130, 302, 50, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_mil_3"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the third number of miles/kilometres"
    END

    GROUPBOX 2040, "Interval period -4-", 5, 335, 365, 94
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInterval4"
    END

    STATICTEXT 2041, "Calculate month &via", 20, 355, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCalcVia4"
    END

    LISTBUTTON 2042, "", 130, 353, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAct_int_via_4"
        DISABLED
        SHORTCUE "Choose the fourth calculation value"
    END

    STATICTEXT 2045, "Number of mon&ths", 20, 377, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMonth4"
    END

    INPUTN 2046, "", 130, 375, 25, 19
    BEGIN
        MASK "###"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_month_4"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the fourth number of months"
    END

    STATICTEXT 2047, "Mile&s", 20, 399, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMiles4"
    END

    INPUTN 2048, "", 130, 397, 50, 19
    BEGIN
        MASK "######"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_mil_4"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the fourth number of miles/kilometres"
    END

    CHECKBOX 2049, "The last defined interval period is repeatable", 7, 433, 300, 19
    BEGIN
        CHECKED
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Act_int_rep_yn"
        DISABLED
        SHORTCUE "Check if the last defined interval period is repeatable"
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
        SEPARATOR
        MENU-ITEM 30207 "De&tails\tF10" 340
        BEGIN
            NAME "menDetails"
        END
    END
    MENU-ITEM 30300 "&Program"
    BEGIN
        NAME "menProgram"
        MENU-ITEM 30303 "&Print\tF9" 339
        BEGIN
            NAME "menPrint"
        END
        MENU-ITEM 30399 "Print &screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
    END
    MENU-ITEM 30400 "&Windows"
    BEGIN
        NAME "menWindows"
        SEPARATOR
    END
    MENU-ITEM 30500 "&Help"
    BEGIN
        NAME "menHelp"
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
