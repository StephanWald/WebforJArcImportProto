VERSION "4.0"

WINDOW 1 "Activity Discount Maintenance" 5 85 1085 780
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 12583940
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmActDiscMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status bar"
    END

    TOOLBUTTON 105, "", 148, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar006.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnFirst_rec"
        DISABLED
        INVISIBLE
        SHORTCUE "Go to the first item"
    END

    TOOLBUTTON 106, "", 172, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar007.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrev_rec"
        DISABLED
        INVISIBLE
        SHORTCUE "Go to the previous item"
    END

    TOOLBUTTON 107, "", 196, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar008.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNext_rec"
        DISABLED
        INVISIBLE
        SHORTCUE "Go to the next item"
    END

    TOOLBUTTON 108, "", 220, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar009.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnLast_rec"
        DISABLED
        INVISIBLE
        SHORTCUE "Go to the last item"
    END

    TOOLBUTTON 109, "", 300, 7, 20, 9
    BEGIN
        IMAGEFILE "Butbar011.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNo_up"
        DISABLED
        INVISIBLE
        SHORTCUE "Increase Skip"
    END

    TOOLBUTTON 110, "", 300, 19, 20, 9
    BEGIN
        IMAGEFILE "Butbar010.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNo_down"
        DISABLED
        INVISIBLE
        SHORTCUE "Decrease Skip"
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
        SHORTCUE "Delete the current item"
    END

    TOOLBUTTON 112, "", 1045, 5, 24, 24
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
        SHORTCUE "Reject unsaved changes"
    END

    GROUPBOX 1000, "", -2, 24, 1090, 9
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
        SHORTCUE "Edit the current item"
    END

    TOOLBUTTON 113, "", 1015, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open print dialogue"
    END

    INPUTN 11000, "1", 252, 7, 40, 19
    BEGIN
        MASK "###0"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "innJumper"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        SHORTCUE "Skip"
    END

    GRID 11001, "", 5, 45, 1073, 730
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 11002
        COLUMNS 11
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 150
        GRIDCOLTITLE 0, "Make"
        GRIDCOLWIDTH 1, 150
        GRIDCOLTITLE 1, "Activity discount code"
        GRIDCOLWIDTH 2, 150
        GRIDCOLTITLE 2, "Customer discount code"
        GRIDCOLWIDTH 3, 75
        GRIDCOLTITLE 3, "Default"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Workshop"
        GRIDCOLWIDTH 5, 75
        GRIDCOLTITLE 5, "Warranty"
        GRIDCOLWIDTH 6, 75
        GRIDCOLTITLE 6, "Internal"
        GRIDCOLWIDTH 7, 75
        GRIDCOLTITLE 7, "Quotation"
        GRIDCOLWIDTH 8, 75
        GRIDCOLTITLE 8, "Separ. 1"
        GRIDCOLWIDTH 9, 75
        GRIDCOLTITLE 9, "Separ. 2"
        GRIDCOLWIDTH 10, 75
        GRIDCOLTITLE 10, "Counter"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclActDisc"
        CLIENTEDGE
    END

    LISTBUTTON 11005, "", -100, -100, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMake_code"
    END

    LISTBUTTON 11006, "", -100, -100, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnAct_disc_code"
    END

    LISTBUTTON 11007, "", -100, -100, 100, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCust_disc_code"
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
