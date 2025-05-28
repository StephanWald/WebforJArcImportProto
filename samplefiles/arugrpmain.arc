VERSION "4.0"

WINDOW 1 "Access Group Maintenance" 100 100 780 560
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAruGrpMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status Bar"
    END

    TABCONTROL 11006, "tclAll", 5, 80, 770, 480
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "General" 0 51
        TAB "Program rights" 0 54
        TAB "Subdivision rights" 0 52
    END

    CHILD-WINDOW 101, 51, 7, 102
    BEGIN
        NAME "chd_frmGeneral" 
    END

    CHILD-WINDOW 102, 52, 7, 102
    BEGIN
        NAME "chd_frmsubDivisionRights" 
    END

    CHILD-WINDOW 104, 54, 7, 102
    BEGIN
        NAME "chd_frmProgramRights" 
    END

    TOOLBUTTON 103, "", 5, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
    END

    TOOLBUTTON 102, "", 30, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
    END

    TOOLBUTTON 100, "", 60, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        DISABLED
        SHORTCUE "Create a new item"
    END

    TOOLBUTTON 101, "", 84, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
    END

    TOOLBUTTON 104, "", 108, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
    END

    TOOLBUTTON 114, "", 168, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END

    TOOLBUTTON 111, "", 138, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 710, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 113, "", 740, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 115, "", 198, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar015.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCopyAccGrp"
        DISABLED
        SHORTCUE "Copy the current Access Group"
    END

    CUSTOMEDIT 11002, "", 112, 43, 98, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Ars_grp_id"
        CLIENTEDGE
    END

    GROUPBOX 11000, "", 2, 24, 776, 50
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    CUSTOMEDIT 11003, "", 224, 43, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Aag_descr"
        CLIENTEDGE
    END

    STATICTEXT 11001, "Access group:", 20, 45, 85, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAccGrp"
    END

    TOOLBUTTON 116, "", 228, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar041.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCheckAll"
        DISABLED
        SHORTCUE "Check all records"
    END

    TOOLBUTTON 117, "", 252, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar042.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnUncheckAll"
        DISABLED
        SHORTCUE "Uncheck all records"
    END
END

WINDOW 2 "Access Group Rights & Reports" 100 100 565 710
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAruGrpRightsAndReps"

    GROUPBOX 12005, "", 7, 7, 550, 55
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    STATICTEXT 12006, "Program:", 21, 28, 72, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProgram"
    END

    CUSTOMEDIT 12007, "", 98, 26, 290, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "AccGrpName"
        CLIENTEDGE
    END

    TABCONTROL 13018, "tclAll", 5, 70, 555, 600
    BEGIN
        AUTOMANAGEMENT
        FIXEDWIDTH
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "Attribute rights" 0 56
        TAB "Report rights" 0 57
    END

    CHILD-WINDOW 106, 56, 7, 92
    BEGIN
        NAME "chd_frmAttRights" 
    END

    CHILD-WINDOW 107, 57, 7, 92
    BEGIN
        NAME "chd_frmReportRights" 
    END

    BUTTON 1, "OK", 225, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 310, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    BUTTON 3, "&Edit", 395, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current view"
    END

    BUTTON 4, "&Help", 480, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END
END

WINDOW 3 "Copy Access Group" 400 260 296 92
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287287308
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmCopyAccGrp"

    STATICTEXT 13001, "Copy this access group to a new access group.", 10, 10, 231, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtGeneral"
    END

    BUTTON 2, "Cancel", 154, 64, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Help", 224, 64, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    BUTTON 1, "OK", 84, 64, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    STATICTEXT 13008, "New access group number :", 8, 34, 140, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNewAccGrpNumber"
    END

    INPUTE 13009, "", 153, 32, 130, 19
    BEGIN
        MASK  "ZZZZZZZZZZZZ"
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ars_grp_id"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the new access group number"
    END
END

CHILD-WINDOW 101 0 0 764 454
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 62915588
    NAME "chd_frmGeneral"

    STATICTEXT 10108, "&Menu class  ", 21, 58, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMenuClass"
    END

    STATICTEXT 10102, "Group description", 21, 37, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAccGrp_name"
    END

    INPUTE 10104, "", 133, 35, 230, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Aag_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the group description"
    END

    LISTBUTTON 10110, "", 133, 56, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMenuClassid"
        DISABLED
        SHORTCUE "Choose the menu class"
    END

    STATICTEXT 10132, "&Rights for WPS", 21, 79, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWPSRights"
    END

    LISTBUTTON 10134, "", 133, 77, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWPSRights"
        DISABLED
        SHORTCUE "Choose the rights for workshop planning system"
    END

    LISTBUTTON 10140, "", 133, 98, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWHSResp"
        DISABLED
        SHORTCUE "Choose the rights for warehouse responsibility"
    END

    STATICTEXT 10138, "&WHS responsibility", 21, 100, 105, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWHSResp"
    END

    INPUTE 10100, "", 133, 14, 130, 19
    BEGIN
        MASK  "ZZZZZZZZZZZZ"
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ars_grp_id"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the group ID"
    END

    STATICTEXT 10142, "ID", 21, 16, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtID"
    END

    TOOLBUTTON 10101, "", 265, 14, 20, 20
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_AccessGroup"
        DISABLED
        SHORTCUE "Search for an order number"
    END
END

CHILD-WINDOW 102 0 0 764 454
BEGIN
    BORDERLESS
    EVENTMASK 12583940
    NAME "chd_frmSubdivisionRights"

    GRID 10201, "", 5, 10, 738, 438
    BEGIN
        ROWS 3000
        COLUMNHEAD 19, 10202
        COLUMNS 7
        VSCROLLBAR
        GRIDCOLWIDTH 0, 135
        GRIDCOLTITLE 0, "Company"
        GRIDCOLWIDTH 1, 135
        GRIDCOLTITLE 1, "Warehouse"
        GRIDCOLWIDTH 2, 135
        GRIDCOLTITLE 2, "Branch"
        GRIDCOLWIDTH 3, 135
        GRIDCOLTITLE 3, "Workshop"
        GRIDCOLWIDTH 4, 135
        GRIDCOLTITLE 4, "Sales department"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "A"
        GRIDCOLWIDTH 6, 20
        GRIDCOLTITLE 6, "D"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclSubDivisionRights"
        CLIENTEDGE
    END
END

CHILD-WINDOW 104 0 0 764 454
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_frmProgramRights"

    GRID 10401, "", 5, 10, 418, 438
    BEGIN
        ROWS 3000
        COLUMNHEAD 19, 10402
        COLUMNS 3
        VSCROLLBAR
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "Item no."
        GRIDCOLWIDTH 1, 300
        GRIDCOLTITLE 1, "Program"
        GRIDCOLWIDTH 2, 20
        GRIDCOLTITLE 2, "A"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclProgramRights"
        CLIENTEDGE
    END
END

CHILD-WINDOW 106 0 0 550 575
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_frmAttRights"

    GRID 10601, "", 5, 10, 538, 555
    BEGIN
        ROWS 500
        COLUMNHEAD 19, 10602
        COLUMNS 3
        VSCROLLBAR
        GRIDCOLWIDTH 0, 170
        GRIDCOLTITLE 0, "Form no."
        GRIDCOLWIDTH 1, 325
        GRIDCOLTITLE 1, "Right attributes"
        GRIDCOLWIDTH 2, 20
        GRIDCOLTITLE 2, "A"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclRightsAtt"
        CLIENTEDGE
    END
END

CHILD-WINDOW 107 0 0 550 575
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_frmReportRights"

    GRID 10701, "", 5, 10, 443, 555
    BEGIN
        ROWS 500
        COLUMNHEAD 19, 10702
        COLUMNS 2
        VSCROLLBAR
        GRIDCOLWIDTH 0, 400
        GRIDCOLTITLE 0, "Reports"
        GRIDCOLWIDTH 1, 20
        GRIDCOLTITLE 1, "A"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclRepRights"
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
        SEPARATOR
        MENU-ITEM 30306 "&Details of this line\tF10" 340
        BEGIN
            NAME "menDetails"
        END
        MENU-ITEM 30308 "&Copy access group\tCtrl+C" 8259
        BEGIN
            NAME "menCopyAccGrp"
        END
        MENU-ITEM 30310 "C&heck all records\tCtrl+F2" 8524
        BEGIN
            NAME "menCheckAll"
        END
        MENU-ITEM 30312 "&Uncheck all records\tCtrl+F3" 8525
        BEGIN
            NAME "menUncheckAll"
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
