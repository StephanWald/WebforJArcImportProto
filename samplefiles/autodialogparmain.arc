VERSION "4.0"

WINDOW 1 "Maintenance of Auto Dialog inteface parameters" 5 85 520 410
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 12583940
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmADParam"

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
        SHORTCUE "Delete the current item"
    END

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 480, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 450, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    GROUPBOX 1000, "", -2, 24, 530, 10
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    TABCONTROL 11001, "tclAll", 5, 40, 510, 360
    BEGIN
        AUTOMANAGEMENT
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tclAll"
        TAB "Users" 0 51
        TAB "General" 0 52
        TAB "FTP parameters" 0 53
    END

    CHILD-WINDOW 101, 51, 7, 62
    BEGIN
        NAME "chd_frmUsers" 
    END

    CHILD-WINDOW 102, 52, 7, 62
    BEGIN
        NAME "chd_frmGeneral" 
    END

    CHILD-WINDOW 103, 53, 7, 62
    BEGIN
        NAME "chd_frmFTPParam" 
    END
END

CHILD-WINDOW 101 0 0 504 334
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwUsers"

    GRID 10101, "", 5, 10, 499, 324
    BEGIN
        ROWS 99
        COLUMNHEAD 20, 10102
        COLUMNS 3
        VSCROLLBAR
        GRIDROWDEFAULTHEIGHT 18
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Employee ID"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Name"
        GRIDCOLWIDTH 2, 125
        GRIDCOLTITLE 2, "User ID"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclUsers"
        CLIENTEDGE
    END
END

CHILD-WINDOW 102 0 0 504 334
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwGeneral"

    CHECKBOX 10240, "&Automatic proposal indicator for new orders", 15, 95, 250, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ad_auto_prop_ind"
        SHORTCUE "If checked automatic proposal in Auto Dialog for new orders is done"
    END

    STATICTEXT 10210, "Small material", 15, 12, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSmallMat"
    END

    LISTBUTTON 10211, "", 135, 10, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnADSmatCode"
        SHORTCUE "Choose the code for small material."
    END

    STATICTEXT 10220, "Environmental costs", 15, 32, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtEnvCosts"
    END

    LISTBUTTON 10221, "", 135, 30, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnADEnvCode"
        SHORTCUE "Choose the code for environmental costs"
    END

    STATICTEXT 10230, "Opel assistance Plus", 15, 52, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOAP"
    END

    LISTBUTTON 10231, "", 135, 50, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnADAOPCode"
        SHORTCUE "Choose the code for Opel assistance PLUS (blanc is no OAP)"
    END

    CHECKBOX 10250, "&Take over labour rates from Auto Dialog", 15, 115, 320, 19
    BEGIN
        CHECKED
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ad_labour_ind"
        SHORTCUE "If checked take over labour rates from Auto Dialog"
    END

    CHECKBOX 10260, "&Take over part prices and discount from Auto Dialog", 15, 135, 320, 19
    BEGIN
        CHECKED
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ad_part_ind"
        SHORTCUE "If checked take over part prices from Auto Dialog"
    END

    STATICTEXT 10261, "Customer group ", 15, 72, 110, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCuCustGrp"
    END

    LISTBUTTON 10262, "", 135, 70, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnCust_group"
        SHORTCUE "Choose the default customer group for internal orders"
    END
END

CHILD-WINDOW 103 0 0 504 334
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwFTPParam"

    GROUPBOX 10300, "Remote information", 5, 10, 495, 130
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    STATICTEXT 10301, "&Remote FTP address", 15, 30, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRmtFTPAddr"
    END

    INPUTE 10302, "", 135, 28, 275, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_FTP_address"
        CLIENTEDGE
        SHORTCUE "Enter the remote server name or IP address"
    END

    STATICTEXT 10305, "Remote &login", 15, 50, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRmtLogin"
    END

    INPUTE 10306, "", 135, 48, 275, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 25
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_FTP_login"
        CLIENTEDGE
        SHORTCUE "Enter the remote login name"
    END

    STATICTEXT 10310, "Remote &password", 15, 70, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRmtPassw"
    END

    EDIT 10311, "", 135, 68, 275, 19
    BEGIN
        PASSWORDENTRY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_FTP_passw"
        CLIENTEDGE
        SHORTCUE "Enter the password of this remote user"
    END

    STATICTEXT 10315, "&Verify password", 15, 90, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVerifyPassw"
    END

    EDIT 10316, "", 135, 88, 275, 19
    BEGIN
        PASSWORDENTRY
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "PasswConfirm"
        CLIENTEDGE
        SHORTCUE "Enter the password to verify"
    END

    STATICTEXT 10320, "Remote &folder", 15, 110, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRmtFolder"
    END

    INPUTE 10321, "", 135, 108, 275, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_FTP_Loc"
        CLIENTEDGE
        SHORTCUE "Enter the remote source folder for export part information"
    END

    GROUPBOX 10330, "Local information", 5, 145, 495, 170
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    STATICTEXT 10340, "&User ID FTP comm.", 15, 165, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFTPUser"
    END

    LISTBUTTON 10341, "", 135, 161, 110, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnADFtpUserId"
        SHORTCUE "Select the user ID for FTP communication."
    END

    STATICTEXT 10345, "&File name send", 15, 185, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFileSend"
    END

    INPUTE 10346, "", 135, 183, 275, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_Source_Name"
        CLIENTEDGE
        SHORTCUE "Enter the local source file name "
    END

    STATICTEXT 10350, "File &location send", 15, 205, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFileLoc"
    END

    INPUTE 10351, "", 135, 203, 350, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 256
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_Source_Loc"
        CLIENTEDGE
        SHORTCUE "Enter the file location "
    END

    STATICTEXT 10355, "File location &save", 15, 225, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFileLocSave"
    END

    INPUTE 10356, "", 135, 223, 350, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 256
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_Source_Save"
        CLIENTEDGE
        SHORTCUE "Enter the file location to save"
    END

    STATICTEXT 10360, "&Path and name log file", 15, 245, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLogFile"
    END

    INPUTE 10361, "", 135, 243, 350, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 256
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_Com_Log"
        CLIENTEDGE
        SHORTCUE "Enter the location and file name of the communication log file"
    END

    STATICTEXT 10365, "&Web address", 15, 265, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWebaddress"
    END

    INPUTE 10366, "", 135, 263, 350, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 100
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "AD_Webaddress"
        CLIENTEDGE
        SHORTCUE "Enter the web address for Auto Dialog web services"
    END

    STATICTEXT 10369, "&STAR interface", 15, 285, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSTARInterface"
    END

    LISTBUTTON 10370, "", 135, 283, 275, 180
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSTARInterface"
        SHORTCUE "Choose the STAR interface for AutoDialog webservices"
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
