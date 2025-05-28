VERSION "4.0"

WINDOW 1 "Preparation user to employee conversion" 100 100 760 502
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    INVISIBLE
    NOT SIZABLE
    EVENTMASK 3287287500
    RADIOGROUP 11004, 11002
    NAME "FrmUserEmployeeConv"
    DIALOGBEHAVIOR
    DEFAULTFONT "Microsoft Sans Serif" 9

    GRID 11011, "", 4, 104, 744, 398
    BEGIN
        ROWS 3000
        COLUMNHEAD 19, 11012
        COLUMNS 5
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Employee ID"
        GRIDCOLWIDTH 1, 200
        GRIDCOLTITLE 1, "Employee name"
        GRIDCOLWIDTH 2, 200
        GRIDCOLTITLE 2, "User"
        GRIDCOLWIDTH 3, 200
        GRIDCOLTITLE 3, "Login name"
        GRIDCOLWIDTH 4, 20
        GRIDCOLTITLE 4, "D"
        NAME "gclUserEmpConv"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11001, "", 0, 24, 754, 8
    BEGIN
        NAME "gbxHeader"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 103, "", 6, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar001.png"
        NAME "tbnSave"
        DISABLED
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 102, "", 30, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png"
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 100, "", 60, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar003.png"
        NAME "tbnNew"
        DISABLED
        SHORTCUE "Create a new item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 101, "", 84, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar004.png"
        NAME "tbnEdit"
        DISABLED
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 104, "", 108, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar005.png"
        NAME "tbnDelete"
        DISABLED
        SHORTCUE "Delete current item"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 113, "", 700, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png"
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 112, "", 724, 4, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png"
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11004, "Make access rights group per employee", 24, 73, 224, 19
    BEGIN
        GROUP
        NAME "rbnConvPerEmp"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11002, "Make access rights group per user", 24, 52, 224, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnConvPerUser"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11021, "How to make the access rights group during the conversion", 8, 36, 744, 64
    BEGIN
        NAME "gbxAccessRightsGroup"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 114, "", 138, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png"
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11020, "", -100, -100, 217, 380
    BEGIN
        NAME "lbnUser"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 120, "", 168, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm005.png"
        NAME "tbnCheck"
        SHORTCUE "Check the conversion input"
        FONT "Microsoft Sans Serif" 9
    END
END

WINDOW 2 "Preparation user to employee conversion details" 100 100 424 192
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287500
    NAME "FrmUserEmpConvDetail"
    DEFAULTFONT "Microsoft Sans Serif" 9

    LISTBUTTON 12012, "", 125, 40, 200, 380
    BEGIN
        NAME "lbnUser"
        DISABLED
        SHORTCUE "Choose the user"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12002, "Employee", 15, 10, 90, 19
    BEGIN
        NAME "txtEmployee"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12004, "", 125, 10, 80, 19
    BEGIN
        NAME "Employee_id"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12006, "", 215, 10, 200, 19
    BEGIN
        NAME "Employee_name"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12010, "&User", 15, 42, 90, 19
    BEGIN
        NAME "txtUser"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12020, "&Login name", 15, 63, 90, 19
    BEGIN
        NAME "txtLoginName"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 12022, "", 125, 61, 200, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Em_login_name"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the login name"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12030, "Pa&ssword", 15, 84, 90, 19
    BEGIN
        JUSTIFICATION 8192
        NAME "txtPassword"
        FONT "Microsoft Sans Serif" 9
    END

    EDIT 12032, "", 125, 82, 200, 19
    BEGIN
        PASSWORDENTRY
        NAME "Em_password"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the password of this employee"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 12040, "&Verify password", 15, 105, 90, 19
    BEGIN
        JUSTIFICATION 8192
        NAME "txtVerifyPassword"
        FONT "Microsoft Sans Serif" 9
    END

    EDIT 12042, "", 125, 103, 200, 19
    BEGIN
        PASSWORDENTRY
        NAME "PasswordConfirm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the password to verify"
        FONT "Microsoft Sans Serif" 9
    END

    CHECKBOX 12050, "&Default employee for this user", 15, 126, 200, 19
    BEGIN
        CHECKED
        NAME "Em_default"
        DISABLED
        SHORTCUE "Check if this employee is the default for this user"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 1, "OK", 144, 160, 60, 22
    BEGIN
        NAME "pbnOK"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 214, 160, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Edit", 284, 160, 60, 22
    BEGIN
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 4, "&Help", 354, 160, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
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
        MENU-ITEM 30302 "&Print\tF9" 339
        BEGIN
            NAME "menPrint"
        END
        MENU-ITEM 30399 "Print &screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
        SEPARATOR
        MENU-ITEM 30306 "&Details of this line\tF10" 340
        BEGIN
            NAME "menDetails"
        END
        MENU-ITEM 30508 "&Check input"
        BEGIN
            NAME "menCheck"
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
