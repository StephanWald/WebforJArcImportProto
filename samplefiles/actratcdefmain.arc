VERSION "4.0"

WINDOW 1 "Activity Rate Code Definition Maintenance" 5 85 490 500
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    NAME "frmActRatcDefMain"
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

    TOOLBUTTON 112, "", 450, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 420, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1000, "", -2, 24, 560, 10
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11001, "Grid", 5, 45, 473, 450
    BEGIN
        ROWS 3000
        COLUMNHEAD 20, 11002
        COLUMNS 3
        USERSIZE
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 150
        GRIDCOLTITLE 0, "Make code"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "Reference"
        GRIDCOLWIDTH 2, 200
        GRIDCOLTITLE 2, "Rate code"
        NAME "gclRatcDef"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11006, "", -100, -100, 100, 380
    BEGIN
        NAME "lbnMakeCode"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11007, "", -140, -140, 90, 380
    BEGIN
        NAME "lbnRateCode"
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
