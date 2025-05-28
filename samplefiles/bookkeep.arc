VERSION "4.0"

WINDOW 1 "Book-keeping Interface" 5 84 802 340
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3233808388
    NAME "FrmBookkeepInt"
    DIALOGBEHAVIOR
    DEFAULTFONT "Microsoft Sans Serif" 9

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  ""
        NAME "Status Bar"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 100, "", 63, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png"
        NAME "tbnNew"
        SHORTCUE "Create a new item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png"
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png"
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png"
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes "
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 104, "", 111, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png"
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png"
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 112, "", 762, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 732, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1000, "", 2, 24, 798, 47
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    TABCONTROL 11001, "tclAll", 5, 85, 792, 250
    BEGIN
        AUTOMANAGEMENT
        NAME "tclAll"
        TAB "General Information" 0 51
        TAB "Set-up Relations" 0 52
        TAB "Set-up Descriptions" 0 53
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 51, 7, 107
    BEGIN
        NAME "chd_frmGeneral"
    END

    CHILD-WINDOW 102, 52, 7, 107
    BEGIN
        NAME "chd_frmSetUpRel"
    END

    CHILD-WINDOW 103, 53, 7, 107
    BEGIN
        NAME "chd_frmSetUpDescr"
    END

    STATICTEXT 1002, "Module:", 15, 42, 110, 19
    BEGIN
        NAME "txtModule"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 1004, "Ledger type:", 340, 42, 110, 19
    BEGIN
        NAME "txtLedgerType"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11002, "", 130, 40, 200, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Module"
        CLIENTEDGE
    END

    CUSTOMEDIT 11003, "", 455, 40, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "LedgerType"
        CLIENTEDGE
    END
END

CHILD-WINDOW 101 0 0 786 224
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287300
    RADIOGROUP 10172, 10173
    RADIOGROUP 10176, 10177
    RADIOGROUP 10182, 10183
    NAME "chd_wdwGeneral"

    STATICTEXT 10149, "&Module", 5, 10, 110, 19
    BEGIN
        NAME "txtModule"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10150, "", 115, 8, 300, 380
    BEGIN
        NAME "lbnModule"
        SHORTCUE "Choose the module"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10151, "&Ledger type", 5, 31, 110, 19
    BEGIN
        NAME "txtLedgerType"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10152, "", 115, 29, 300, 380
    BEGIN
        NAME "lbnLedgerType"
        SHORTCUE "Choose ledger type"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10153, "&General ledger no.", 5, 52, 110, 19
    BEGIN
        NAME "txtGenLedNr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10154, "", 115, 50, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Gen_led_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the general ledger number"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10155, "", 260, 50, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Gen_descr_1"
        CLIENTEDGE
    END

    TOOLBUTTON 10156, "", 220, 50, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearchGen_led_nr"
        DISABLED
        SHORTCUE "Search for a general ledger number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10157, "&Cost centre", 5, 72, 95, 19
    BEGIN
        NAME "txtCost_centr"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10158, "", 115, 70, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cost_centre"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the cost centre"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10159, "", 260, 70, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cc_descr"
        CLIENTEDGE
    END

    TOOLBUTTON 10160, "", 220, 70, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearchCost_centre"
        DISABLED
        SHORTCUE "Search for a cost centre"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10163, "Cost o&bject", 5, 93, 95, 19
    BEGIN
        NAME "txtCost_object"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10164, "", 115, 90, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Cost_object"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the cost object"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10165, "", 260, 90, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Co_descr"
        CLIENTEDGE
    END

    TOOLBUTTON 10166, "", 220, 90, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearchCost_object"
        DISABLED
        SHORTCUE "Search for a cost object"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10170, "", 3, 113, 235, 68
    BEGIN
        NAME "gclNegPosting"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10171, "Negative posting", 13, 128, 90, 36
    BEGIN
        NAME "txtNegative posting"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10172, "&No changes", 115, 128, 90, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnNegNo"
        DISABLED
        SHORTCUE "Select for no changes to negative postings"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10173, "Convert to &positive", 115, 148, 115, 19
    BEGIN
        GROUP
        NAME "rbnNegConv"
        DISABLED
        SHORTCUE "Select to convert negative postings to positive"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10174, "", 258, 113, 230, 68
    BEGIN
        NAME "gclStornoPosting"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10175, "Storno posting", 268, 128, 85, 36
    BEGIN
        NAME "txtNegative posting"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10176, "No c&hanges", 360, 128, 90, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnStornoNo"
        DISABLED
        SHORTCUE "Select for no changes to storno postings"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10177, "Convert to p&ositive", 360, 148, 115, 19
    BEGIN
        GROUP
        NAME "rbnStornoConv"
        DISABLED
        SHORTCUE "Select to convert storno postings to positive"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10180, "", 500, 113, 230, 68
    BEGIN
        NAME "gclStornoPosting"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10181, "Default for manual postings", 510, 128, 93, 38
    BEGIN
        NAME "txtDefault"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10182, "&Debit", 602, 128, 90, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnDebit"
        DISABLED
        SHORTCUE "Select to debit for manual postings"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 10183, "&Credit", 602, 148, 100, 19
    BEGIN
        GROUP
        NAME "rbnCredit"
        DISABLED
        SHORTCUE "Select to credit for manual postings"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 10185, "Store this posting in a separate journal (extra compatible). ", 4, 184, 375, 25
    BEGIN
        NAME "Ish_code_ie_pos"
        DISABLED
        INVISIBLE
        SHORTCUE "Check to store this posting in a separate journal"
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 102 0 0 786 224
BEGIN
    BORDERLESS
    EVENTMASK 3287287300
    NAME "chd_wdwSetUpRel"

    GRID 10261, "", 5, 10, 772, 210
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 10262
        COLUMNS 5
        VSCROLLBAR
        GRIDCOLWIDTH 0, 300
        GRIDCOLTITLE 0, "Table"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Field"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Value"
        GRIDCOLTITLE 3, "From"
        GRIDCOLTITLE 4, "To"
        NAME "gclSetUpRel"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10264, "", -800, -100, 150, 380
    BEGIN
        NAME "lbnTable"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10266, "", -800, -100, 150, 380
    BEGIN
        NAME "lbnField"
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 103 0 0 786 224
BEGIN
    BORDERLESS
    EVENTMASK 3284141572
    NAME "chd_wdwSetUpDescr"

    GRID 10361, "", 5, 10, 672, 210
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 10362
        COLUMNS 3
        VSCROLLBAR
        GRIDCOLWIDTH 0, 300
        GRIDCOLTITLE 0, "Table"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Field"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Separator"
        NAME "gclSetUpDescr"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10364, "", -100, -100, 150, 380
    BEGIN
        NAME "lbnTable"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10366, "", -100, -100, 150, 380
    BEGIN
        NAME "lbnField"
        FONT "Microsoft Sans Serif" 9
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
