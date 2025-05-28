VERSION "4.0"

WINDOW 1 "Leeuwkes Parameter Maintenance" 5 84 565 250
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 29361156
    NAME "FrmBeLeeParMain"
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
        DISABLED
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
        SHORTCUE "Save changes"
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

    TOOLBUTTON 112, "", 510, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 484, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 114, "", 144, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png"
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10000, "", 3, 24, 564, 8
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 10001, "", 10, 40, 548, 205
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 10002
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDROWDEFAULTHEIGHT 19
        GRIDCOLWIDTH 0, 150
        GRIDCOLTITLE 0, "Company"
        GRIDCOLWIDTH 1, 150
        GRIDCOLTITLE 1, "Branch"
        GRIDCOLWIDTH 2, 150
        GRIDCOLTITLE 2, "Workshop"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Sequence no."
        NAME "gclWorkshop"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10006, "List Button", -800, 0, 50, 380
    BEGIN
        NAME "lbnCompany"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10007, "List Button", -800, 0, 50, 380
    BEGIN
        NAME "lbnBranch"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10008, "List Button", -800, 0, 50, 380
    BEGIN
        NAME "lbnWorkshop"
        FONT "Microsoft Sans Serif" 9
    END
END

WINDOW 2 "Leeuwkes Parameter Maintenance Details" 100 100 475 285
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287286796
    NAME "FrmBeLeeMainDetails"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 195, 255, 60, 22
    BEGIN
        NAME "pbnOK"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 265, 255, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Edit", 335, 255, 60, 22
    BEGIN
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 405, 255, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12001, "Workshop :", 20, 18, 100, 19
    BEGIN
        NAME "txtWorkshop"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12002, "", 130, 16, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Wks_name"
        CLIENTEDGE
    END

    STATICTEXT 12003, "&Leeuwkes seq. no.", 20, 40, 110, 19
    BEGIN
        NAME "txtSeqNo"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 12004, "", 130, 38, 50, 19
    BEGIN
        MASK "####0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_seq_nr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the Leeuwkes sequence number"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12015, "&Number of records", 20, 102, 110, 19
    BEGIN
        NAME "txtNofRec"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 12016, "", 130, 100, 25, 19
    BEGIN
        MASK "#0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_nof_rec"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of records that must be printed on one page"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12007, "L&eeuwkes form", 20, 60, 110, 19
    BEGIN
        NAME "txtLeeuwForm"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 12008, "", 130, 58, 200, 380
    BEGIN
        NAME "lbnLeeuwkesForm"
        SHORTCUE "Select the form with the Leeuwkes lay out"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12011, "&Printer Leeuwkes form", 20, 81, 110, 19
    BEGIN
        NAME "txtPrinDevice"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 12012, "", 130, 79, 200, 380
    BEGIN
        NAME "lbnLeeuwkesPrinter"
        SHORTCUE "Select the printer on which the Leeuwkes forms are printed."
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 12020, "List -1- Incoming cars in the workshop", 10, 130, 223, 115
    BEGIN
        NAME "gbxList1"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12021, "L&ast print date", 20, 152, 110, 19
    BEGIN
        NAME "txtSeqNo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12023, "La&st page number", 20, 172, 110, 19
    BEGIN
        NAME "txtLastPageNo1"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12022, "", 130, 152, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list1_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last print date for list -1-"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 12024, "", 130, 172, 50, 19
    BEGIN
        MASK "####0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list1_pagenr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last used page number for list -1-"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12025, "A&ctual year", 20, 192, 110, 19
    BEGIN
        NAME "txtYear1"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12026, "", 130, 192, 50, 19
    BEGIN
        MASK  "0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list1_year"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the actual year for list -1-"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 12030, "List -2- Cars that have left the workshop", 245, 130, 223, 115
    BEGIN
        NAME "gbxList2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12031, "Las&t print date", 255, 152, 110, 19
    BEGIN
        NAME "txtLastDate2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12033, "Last &page number", 255, 172, 110, 19
    BEGIN
        NAME "txtLastPageNo2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12032, "", 365, 150, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list2_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last print date for list -2-"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 12034, "", 365, 170, 50, 19
    BEGIN
        MASK "####0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list2_pagenr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the last used page number for list -2-"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12035, "A&ctual year", 255, 192, 110, 19
    BEGIN
        NAME "txtYear2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12036, "", 365, 190, 50, 19
    BEGIN
        MASK  "0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "blp_list2_year"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the actual year for list -2-"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12037, "Page no. last year :", 20, 212, 110, 19
    BEGIN
        NAME "txtPageNoLY1"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12038, "", 130, 210, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list1_pn_ly"
        CLIENTEDGE
    END

    STATICTEXT 12039, "Page no. last year :", 255, 212, 110, 19
    BEGIN
        NAME "txtPageNoLY2"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 12040, "", 366, 209, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list2_pn_ly"
        CLIENTEDGE
    END
END

MENU 101
BEGIN
    MENU-ITEM 30100 "&File"
    BEGIN
        NAME "menFile"
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
        MENU-ITEM 30214 "De&tails of this line\tF10" 340
        BEGIN
            NAME "menDetails"
        END
    END
    MENU-ITEM 30300 "&Program"
    BEGIN
        NAME "menProgram"
        MENU-ITEM 30302 "&Print\tF9" 339
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
