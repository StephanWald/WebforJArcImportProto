VERSION "4.0"

WINDOW 1 "Car / Case Damage Information" 5 85 808 539
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 12583940
    NAME "frmCarDamage"
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
        SHORTCUE "Delete the current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 112, "", 768, 5, 24, 24
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

    GROUPBOX 1000, "", -2, 24, 810, 10
    BEGIN
        NAME "gbxHeader"
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

    GRID 10021, "", 7, 98, 795, 434
    BEGIN
        ROWS 500
        COLUMNHEAD 20, 10022
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 40
        GRIDCOLTITLE 0, "Seq"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Repair date"
        GRIDCOLWIDTH 2, 640
        GRIDCOLTITLE 2, "Damage description"
        GRIDCOLWIDTH 3, 20
        GRIDCOLTITLE 3, "I"
        NAME "gclDam"
        CLIENTEDGE
        SHORTCUE "The grid shows all recorded damage information of the car; the column  'I' indicates if the data was imported from an external system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10001, "License :", 7, 42, 100, 19
    BEGIN
        NAME "txtCaseNo"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10003, "Chassis number :", 255, 42, 100, 19
    BEGIN
        NAME "txtChassis_nr"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10002, "", 110, 40, 135, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    CUSTOMEDIT 10004, "", 358, 40, 190, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Chassis_nr"
        CLIENTEDGE
    END

    STATICTEXT 10010, "Car info. :", 7, 62, 100, 19
    BEGIN
        NAME "txtCar_info"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10011, "", 110, 60, 450, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Carinfo"
        CLIENTEDGE
    END

    STATICTEXT 10005, "Damage Id :", 558, 42, 100, 19
    BEGIN
        NAME "txtDam_id"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10006, "", 661, 40, 135, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Dam_id"
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
