VERSION "4.0"

WINDOW 1 "Action Maintenance" 5 85 1270 540
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActionMain"

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

    TOOLBUTTON 107, "", 146, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 110, "", 1200, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 111, "", 1230, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    GROUPBOX 1000, "", -2, 24, 1274, 8
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 1001, "", 5, 36, 1258, 500
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 1002
        COLUMNS 11
        USERSIZE
        VSCROLLBAR
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 175
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "From date"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "To date"
        GRIDCOLTITLE 4, "Price"
        GRIDCOLWIDTH 5, 90
        GRIDCOLTITLE 5, "Activity ID"
        GRIDCOLWIDTH 6, 175
        GRIDCOLTITLE 6, "Description"
        GRIDCOLWIDTH 7, 175
        GRIDCOLTITLE 7, "Company"
        GRIDCOLWIDTH 8, 175
        GRIDCOLTITLE 8, "Branch"
        GRIDCOLWIDTH 9, 175
        GRIDCOLTITLE 9, "Workshop"
        GRIDCOLWIDTH 10, 20
        GRIDCOLTITLE 10, "S"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclActions"
        CLIENTEDGE
        SHORTCUE "When S column is set to checked, this action will be set checked as default in the order entry program."
    END

    LISTBUTTON 10100, "", -800, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCompany"
    END

    LISTBUTTON 10101, "", -800, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBranch"
    END

    LISTBUTTON 10102, "", -800, 0, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWorkshop"
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
