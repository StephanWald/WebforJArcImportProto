VERSION "4.0"

WINDOW 1 "Maintenance of Chassis Number Campaigns" 5 85 882 505
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 15729668
    NAME "frmCarCampaignMain"
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

    TOOLBUTTON 112, "", 842, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
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

    GROUPBOX 1000, "", -2, 24, 892, 10
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 101, "", 87, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png"
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit the current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 812, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    GRID 11001, "", 5, 45, 872, 455
    BEGIN
        ROWS 21
        COLUMNHEAD 20, 11002
        COLUMNS 6
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 175
        GRIDCOLTITLE 0, "Chassis number"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Campaign ID"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Make"
        GRIDCOLWIDTH 3, 350
        GRIDCOLTITLE 3, "Campaign text"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Order date"
        GRIDCOLWIDTH 5, 75
        GRIDCOLTITLE 5, "Release date"
        NAME "gclCarCampaign"
        CLIENTEDGE
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

    SCROLLBAR 11000, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 11004, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 11005, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    LISTBUTTON 11006, "", -100, -100, 100, 380
    BEGIN
        NAME "lbnMake_code"
        FONT "Microsoft Sans Serif" 9
    END
END

WINDOW 2 "Print Chassis Number Campaigns" 1 80 370 249
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141060
    RADIOGROUP 11000, 11001
    NAME "frmPrintCampaign"
    DEFAULTFONT "Microsoft Sans Serif" 9

    STATICTEXT 11003, "&From item", 15, 65, 90, 20
    BEGIN
        NAME "txtItem_from"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11006, "&To item", 15, 85, 90, 20
    BEGIN
        NAME "txtItem_to"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11019, "List &date", 15, 169, 90, 20
    BEGIN
        NAME "txtList_date"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 11032, "&Print", 160, 217, 60, 22
    BEGIN
        NAME "pbnPrint"
        SHORTCUE "Print the specified range"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 230, 217, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject your changes"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 1000, "", 5, 8, 360, 194
    BEGIN
        NAME "gbxOrderinf"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11020, "", 125, 167, 75, 20
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "ineList_date"
        CLIENTEDGE
        SHORTCUE "Enter list date"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 300, 217, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11014, "", 125, 104, 225, 380
    BEGIN
        NAME "lbnForm"
        DISABLED
        SHORTCUE "Choose type of form"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11013, "T&ype of form", 15, 106, 90, 20
    BEGIN
        NAME "txtForm"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11004, "", 125, 63, 200, 20
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "ineItem_from"
        CLIENTEDGE
        SHORTCUE "Enter the first item in the range"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11007, "", 125, 83, 200, 20
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "ineItem_to"
        CLIENTEDGE
        SHORTCUE "Enter the last item in the range"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11017, "P&rint device", 15, 148, 90, 20
    BEGIN
        NAME "txtPrintDevice"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11018, "", 125, 146, 225, 380
    BEGIN
        NAME "lbnPrintDevice"
        DISABLED
        SHORTCUE "Choose printing device"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 11030, "&View", 90, 217, 60, 22
    BEGIN
        NAME "pbnView "
        SHORTCUE "View the range"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11015, "Vie&w device", 15, 127, 75, 20
    BEGIN
        NAME "txtViewDevice"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11016, "", 125, 125, 225, 380
    BEGIN
        NAME "lbnViewDevice"
        DISABLED
        SHORTCUE "Choose the viewing device"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11000, "Via &chassis number", 15, 23, 150, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnChassis"
        SHORTCUE "Print via chassis number"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11001, "Via c&ampaign", 15, 43, 200, 19
    BEGIN
        GROUP
        NAME "rbnCampaign"
        SHORTCUE "Print via campaign"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11005, "", 330, 63, 20, 20
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearchItemFrom"
        SHORTCUE "Search for an item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 11008, "", 330, 83, 20, 20
    BEGIN
        IMAGEFILE "Butfrm001.png"
        NAME "tbnSearchItemTo"
        SHORTCUE "Search for an item"
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
