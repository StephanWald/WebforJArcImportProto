VERSION "4.0"

WINDOW 1 "Connect Direct Send Requests To BMW" 5 85 705 318
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 2210399236
    NAME "FrmCDSendRequest"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 482, 284, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 552, 284, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 622, 284, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11001, "Grid", 4, 5, 698, 270
    BEGIN
        ROWS 3000
        COLUMNHEAD 20, 11002
        COLUMNS 5
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "Appl. ID"
        GRIDCOLWIDTH 1, 100
        GRIDCOLTITLE 1, "Dealer number"
        GRIDCOLWIDTH 2, 300
        GRIDCOLTITLE 2, "Description"
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Last generation nr."
        GRIDCOLWIDTH 4, 100
        GRIDCOLTITLE 4, "Send a request"
        NAME "gclCDSendRequests"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11004, "", -100, -100, 90, 380
    BEGIN
        NAME "lbnSendRequest"
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
