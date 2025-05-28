VERSION "4.0"

WINDOW 1 "AutoVHC Parameter Maintenance" 5 105 385 195
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 12582916
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAutoVHCParMain"

    STATUSBAR 999
    BEGIN
        INITIALCONTENTS  "" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Status Bar"
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

    TOOLBUTTON 102, "", 29, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar002.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCancel"
        DISABLED
        SHORTCUE "Reject unsaved changes"
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
        SHORTCUE "Delete current item"
    END

    TOOLBUTTON 112, "", 345, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 315, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        INVISIBLE
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 114, "", 146, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue of the selected line"
    END

    GROUPBOX 1008, "", -2, 24, 395, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 1011, "", 6, 38, 373, 155
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 1012
        COLUMNS 2
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Site code"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Description"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclSiteCode"
        CLIENTEDGE
    END
END

WINDOW 2 "AutoVHC parameters" 8 108 400 270
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 62915588
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAutoVhcParDet"

    BUTTON 1, "OK", 60, 232, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes "
    END

    BUTTON 2, "Cancel", 145, 232, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    BUTTON 3, "&Edit", 230, 232, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current form"
    END

    BUTTON 4, "&Help", 315, 232, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 12000, "Site code :", 15, 11, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSiteCode"
    END

    CUSTOMEDIT 12001, "", 140, 9, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "avp_site_code"
        CLIENTEDGE
    END

    STATICTEXT 12002, "&Description", 15, 32, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescription"
    END

    INPUTE 12003, "", 140, 31, 250, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_descr"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the site code description"
    END

    STATICTEXT 12020, "&Currency ", 15, 116, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCurcode"
    END

    LISTBUTTON 12021, "", 140, 115, 100, 150
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCurrency"
        DISABLED
        SHORTCUE "Choose the currency code"
    END

    STATICTEXT 12022, "Cul&ture ", 15, 137, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCulCode"
    END

    STATICTEXT 12008, "&User name", 15, 53, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtUserName"
    END

    STATICTEXT 12010, "&Password", 15, 74, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPassword"
    END

    STATICTEXT 12034, "No. of days &red", 15, 158, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNod_fu_r"
    END

    STATICTEXT 12036, "No. of days &amber", 15, 179, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNod_fu_a"
    END

    STATICTEXT 12038, "&No. of days to delete ", 15, 200, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNod_del"
    END

    INPUTE 12023, "", 140, 136, 100, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_locale"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the culture code used in AutoVHC"
    END

    INPUTN 12035, "", 140, 157, 50, 19
    BEGIN
        MASK "###0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_nod_fu_r"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of days for follow up, code red"
    END

    INPUTN 12037, "", 140, 178, 50, 19
    BEGIN
        MASK "###0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_nod_fu_a"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of days for follow up, code amber"
    END

    INPUTN 12039, "", 140, 199, 50, 19
    BEGIN
        MASK "###0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_nod_del"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the number of days to delete the history"
    END

    INPUTE 12009, "", 140, 52, 200, 19
    BEGIN
        MASK  "UUUUUUUUUUUUUUUUUUUUUUUUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_username"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the AutoVHC user name "
    END

    EDIT 12011, "", 140, 73, 200, 19
    BEGIN
        PASSWORDENTRY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "avp_password"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the password for this user"
    END

    EDIT 12013, "", 140, 94, 200, 19
    BEGIN
        PASSWORDENTRY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "PasswordConfirm"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the password to verify"
    END

    STATICTEXT 12012, "&Verify Password", 15, 95, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVerifyPassword"
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
        MENU-ITEM 30214 "De&tails\tF10" 340
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
