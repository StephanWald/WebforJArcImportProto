VERSION "4.0"

WINDOW 1 "Activity Rate Maintenance" 5 85 1270 780
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActRateMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
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

    TOOLBUTTON 112, "", 1235, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 1205, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 114, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END

    GROUPBOX 1000, "", 0, 24, 1270, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 11001, "Grid", 5, 45, 1258, 730
    BEGIN
        ROWS 9999
        COLUMNHEAD 20, 11002
        COLUMNS 12
        USERSIZE
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 130
        GRIDCOLTITLE 0, "Rate group mechanic"
        GRIDCOLWIDTH 1, 130
        GRIDCOLTITLE 1, "Rate group car"
        GRIDCOLWIDTH 2, 175
        GRIDCOLTITLE 2, "Rate code of the activity"
        GRIDCOLWIDTH 3, 80
        GRIDCOLTITLE 3, "Default"
        GRIDCOLWIDTH 4, 90
        GRIDCOLTITLE 4, "Workshop"
        GRIDCOLWIDTH 5, 90
        GRIDCOLTITLE 5, "Warranty"
        GRIDCOLWIDTH 6, 90
        GRIDCOLTITLE 6, "Internal"
        GRIDCOLWIDTH 7, 90
        GRIDCOLTITLE 7, "Pro Forma"
        GRIDCOLWIDTH 8, 90
        GRIDCOLTITLE 8, "Separate 1"
        GRIDCOLWIDTH 9, 90
        GRIDCOLTITLE 9, "Separate 2"
        GRIDCOLWIDTH 10, 90
        GRIDCOLTITLE 10, "Counter sales"
        GRIDCOLWIDTH 11, 90
        GRIDCOLTITLE 11, "Cost price"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclRates"
        CLIENTEDGE
    END

    LISTBUTTON 11004, "List Button", -100, -100, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMechanic_group"
    END

    LISTBUTTON 11005, "Rate_group", -120, -120, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnRate_Group"
    END

    LISTBUTTON 11006, "Rate_Code", -140, -140, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnRate_Code"
    END

    TOOLBUTTON 11007, "", 179, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar019.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCreActRate"
        SHORTCUE "Create default rates if necessary"
    END
END

WINDOW 2 "Default Rates" 165 90 400 155
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    DIALOGBORDER
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    NOT CLOSEBOX
    EVENTMASK 1024
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmNewRates"

    BUTTON 1, "OK", 145, 125, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 230, 125, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Help", 315, 125, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 2000, "There are new codes detected by the program. Please enter a default rate and cost price. All relations will be created automatically.", 10, 10, 380, 51
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtExplanation"
    END

    STATICTEXT 12001, "&Default rate", 10, 72, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDefRate"
    END

    INPUTN 12002, " ", 145, 70, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Def_rate"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter default rate"
    END

    STATICTEXT 12003, "&Cost price", 10, 92, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCostPrice"
    END

    INPUTN 12004, " ", 145, 90, 90, 19
    BEGIN
        MASK "#####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cost_price"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter cost price"
    END
END

WINDOW 3 "Activity Rate Details" 165 90 360 350
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141572
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmActRateDetails"

    BUTTON 1, "OK", 15, 315, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 100, 315, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Edit", 185, 315, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
    END

    BUTTON 4, "&Help", 270, 315, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 13009, "&Default", 15, 102, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDefRate"
    END

    INPUTN 13010, " ", 145, 100, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_def"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the default rate"
    END

    STATICTEXT 13029, "&Cost price", 15, 282, 83, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCostPrice"
    END

    INPUTN 13030, " ", 145, 280, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_cost_price"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the cost price"
    END

    STATICTEXT 3000, "Tarif group:", 15, 10, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMechGroup"
    END

    STATICTEXT 3002, "Rate group:", 15, 30, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRateGroup"
    END

    STATICTEXT 3004, "Rate code:", 15, 50, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRateCode"
    END

    GROUPBOX 3006, "Rates for Orders", 5, 80, 350, 195
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclRate"
    END

    CUSTOMEDIT 13000, "", 145, 8, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "MechanicGroup"
        CLIENTEDGE
    END

    CUSTOMEDIT 13002, "", 145, 28, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "RateGroup"
        CLIENTEDGE
    END

    CUSTOMEDIT 13004, "", 145, 48, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "RateCode"
        CLIENTEDGE
    END

    STATICTEXT 13011, "Wor&kshop", 15, 122, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWksRate"
    END

    STATICTEXT 13013, "&Warranty", 15, 142, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWarRate"
    END

    STATICTEXT 13015, "&Internal", 15, 162, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtIntRate"
    END

    STATICTEXT 13017, "P&ro Forma", 15, 182, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProRate"
    END

    STATICTEXT 13019, "Separate &1", 15, 202, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWks_1_Rate"
    END

    STATICTEXT 13021, "Separate &2", 15, 222, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWks_2_Rate"
    END

    INPUTN 13012, " ", 145, 120, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_wks"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Workshop order"
    END

    INPUTN 13014, " ", 145, 140, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_war"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Warranty order"
    END

    INPUTN 13016, " ", 145, 160, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_int"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Internal order"
    END

    INPUTN 13018, " ", 145, 180, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_pro"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Pro Forma order"
    END

    INPUTN 13020, " ", 145, 200, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_wks_1"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Separate 1 order"
    END

    INPUTN 13022, " ", 145, 220, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_wks_2"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Separate 2 order"
    END

    STATICTEXT 13023, "Counter Sa&les", 15, 242, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtwhs_rate"
    END

    INPUTN 13024, " ", 145, 240, 90, 19
    BEGIN
        MASK "####0.0000"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Rate_am_whs"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the rate for a Counter Sales order"
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
        MENU-ITEM 30214 "De&tails\tF10" 340
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
