VERSION "4.0"

WINDOW 1 "Maintenance of Case Posting Types" 5 85 952 400
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 3284141572
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCaPoMain"

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

    TOOLBUTTON 112, "", 912, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes "
    END

    GROUPBOX 1000, "", -2, 24, 962, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
    END

    TOOLBUTTON 113, "", 882, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        SHORTCUE "Open the print dialogue"
    END

    TABCONTROL 11001, "TclAll", 5, 45, 942, 338
    BEGIN
        AUTOMANAGEMENT
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "TclAll"
        TAB "Posting Types" 0 51
        TAB "Related Ledger Types" 0 52
    END

    CHILD-WINDOW 101, 51, 7, 67
    BEGIN
        NAME "chd_frmCaPo" 
    END

    CHILD-WINDOW 102, 52, 7, 67
    BEGIN
        NAME "chd_frmCaPoLeTy" 
    END

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 114, "", 179, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END
END

WINDOW 2 "Case Posting Details" 50 200 480 215
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287308
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmCapoDetails"

    BUTTON 1, "OK", 140, 184, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 225, 184, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Edit", 310, 184, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
    END

    BUTTON 4, "&Help", 395, 184, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 2000, "Posting ID :", 10, 12, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCaPoId"
    END

    CUSTOMEDIT 2001, "", 140, 10, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cas_post_id"
        CLIENTEDGE
    END

    STATICTEXT 2004, "&Description", 10, 32, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescription"
    END

    INPUTE 2005, "", 141, 30, 225, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 35
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Post_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter a description"
    END

    STATICTEXT 2008, "&General ledger no.", 10, 52, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtGen_Ledger_No"
    END

    INPUTE 2009, "", 140, 50, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Gen_led_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the general ledger number"
    END

    TOOLBUTTON 2010, "", 246, 50, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearchGen_led_nr"
        DISABLED
        SHORTCUE "Search for a general ledger number"
    END

    CUSTOMEDIT 2011, "", 270, 50, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Gen_Descr_1"
        CLIENTEDGE
    END

    STATICTEXT 2016, "&Cost centre", 10, 72, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCost_centr"
    END

    INPUTE 2017, "", 140, 70, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cost_centre"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the cost centre"
    END

    TOOLBUTTON 2018, "", 246, 70, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearchCost_centre"
        DISABLED
        SHORTCUE "Search for a cost centre"
    END

    CUSTOMEDIT 2019, "", 270, 70, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cost_centre_descr"
        CLIENTEDGE
    END

    CUSTOMEDIT 2027, "", 270, 90, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cost_object_descr"
        CLIENTEDGE
    END

    TOOLBUTTON 2026, "", 246, 90, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearchCost_object"
        DISABLED
        SHORTCUE "Search for a cost object"
    END

    INPUTE 2025, "", 140, 90, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Cost_object"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the cost object number"
    END

    STATICTEXT 2024, "Cost &object", 10, 92, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCost_object"
    END

    STATICTEXT 2030, "&Ledger type", 10, 112, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLedgerType"
    END

    LISTBUTTON 2031, "", 140, 110, 225, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnLedgerType"
        SHORTCUE "Choose a ledger type"
    END

    STATICTEXT 2035, "&Supplier number", 10, 133, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSuppl_nr"
    END

    INPUTE 2036, "", 140, 131, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Sp_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter a supplier number"
    END

    TOOLBUTTON 2037, "", 246, 131, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearchSuppl"
        DISABLED
        SHORTCUE "Search for a supplier number"
    END

    CUSTOMEDIT 2038, "", 270, 131, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Sp_name"
        CLIENTEDGE
    END

    STATICTEXT 2040, "S&uppress", 10, 153, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSuppress"
    END

    LISTBUTTON 2041, "", 140, 151, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSuppress"
        DISABLED
        SHORTCUE "Choose whether or not to suppress"
    END
END

CHILD-WINDOW 101 0 0 936 312
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwCaPo"

    GRID 11001, "", 5, 10, 922, 300
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 11002
        COLUMNS 8
        USERSIZE
        VSCROLLBAR
        GRIDCOLTITLE 0, "Id"
        GRIDCOLWIDTH 1, 165
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 110
        GRIDCOLTITLE 2, "Gen. ledger no."
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Cost centre"
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Cost object"
        GRIDCOLWIDTH 5, 200
        GRIDCOLTITLE 5, "Ledger type"
        GRIDCOLWIDTH 6, 100
        GRIDCOLTITLE 6, "Supplier"
        GRIDCOLWIDTH 7, 75
        GRIDCOLTITLE 7, "Suppress"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCaPo"
        CLIENTEDGE
    END

    LISTBUTTON 11004, "", -100, -100, 107, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnLedgerType"
    END

    LISTBUTTON 11007, "", -100, -100, 107, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSuppress"
    END
END

CHILD-WINDOW 102 0 0 936 312
BEGIN
    BORDERLESS
    EVENTMASK 3824158660
    NAME "chd_wdwCaPoLeTy"

    GRID 12051, "", 5, 35, 247, 270
    BEGIN
        ROWS 999
        COLUMNHEAD 20, 12052
        COLUMNS 1
        VSCROLLBAR
        GRIDCOLWIDTH 0, 225
        GRIDCOLTITLE 0, "Available ledger types"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "GclAvCostCentres"
        CLIENTEDGE
    END

    GRID 12071, "Grid", 348, 35, 247, 270
    BEGIN
        ROWS 999
        COLUMNHEAD 20, 12072
        COLUMNS 1
        VSCROLLBAR
        GRIDCOLWIDTH 0, 225
        GRIDCOLTITLE 0, "Linked ledger types"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "GclLiCostCentres"
        CLIENTEDGE
    END

    TOOLBUTTON 12060, "", 270, 105, 60, 20
    BEGIN
        IMAGEFILE "Next.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSelect"
        SHORTCUE "Add the selected ledger type"
    END

    TOOLBUTTON 12062, "", 270, 135, 60, 20
    BEGIN
        IMAGEFILE "Nextstep.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSelectAll"
        SHORTCUE "Add all ledger types"
    END

    TOOLBUTTON 12064, "", 270, 185, 60, 20
    BEGIN
        IMAGEFILE "Previous.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDeselect"
        SHORTCUE "Remove the selected ledger type"
    END

    TOOLBUTTON 12066, "", 270, 215, 60, 20
    BEGIN
        IMAGEFILE "Prevstep.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDeselectAll"
        SHORTCUE "Remove all ledger types"
    END

    STATICTEXT 12000, "Case posting type :", 5, 10, 108, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCaPoTy"
    END

    CUSTOMEDIT 12002, "", 130, 8, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cas_post_id"
        CLIENTEDGE
    END

    CUSTOMEDIT 12006, "", 200, 8, 250, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Post_descr"
        CLIENTEDGE
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
        MENU-ITEM 30302 "&Print\tF9" 339
        BEGIN
            NAME "menprint"
        END
        MENU-ITEM 30399 "P&rint screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
        SEPARATOR
        MENU-ITEM 30303 "&Details\tF10" 340
        BEGIN
            NAME "menDetails"
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
