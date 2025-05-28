VERSION "4.0"

WINDOW 1 "Import stock cars from Autosys" 5 84 500 340
BEGIN
    ICON "Ecc_ico.bmp"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmImportAutoSysStock"

    BUTTON 1, "OK", 130, 310, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "OK"
        LONGCUE "Save changes and close the dialogue"
    END

    BUTTON 2, "Cancel", 215, 310, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel"
        LONGCUE "Reject changes and close the dialogue"
    END

    BUTTON 3, "&Help", 300, 310, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Help"
        LONGCUE "Open the Easy Car Connect Help system for further assistance"
    END

    GROUPBOX 10000, "", 6, 83, 490, 197
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    STATICTEXT 10002, "Import file &stock", 13, 186, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImportFile"
    END

    INPUTE 10003, "", 130, 184, 330, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Idf_import_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file to import for stock cars"
    END

    TOOLBUTTON 10004, "", 465, 184, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbn_SearchFile"
        SHORTCUE "Search for import file"
        LONGCUE "Search for an import file"
    END

    STATICTEXT 10030, "Process status :", 13, 285, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRecordCounter"
    END

    CHILD-WINDOW 101, 55, 129, 285
    BEGIN
        NAME "chd_frmProgress" 
    END

    STATICTEXT 10006, "&Company ", 13, 97, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCompany"
    END

    LISTBUTTON 10007, "", 130, 95, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnComp_Id"
        SHORTCUE "The default company."
        LONGCUE "Choose the default company of this user"
    END

    LISTBUTTON 10009, "", 130, 117, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBranch_Id"
        SHORTCUE "The default branch."
        LONGCUE "Choose the default branch of this user"
    END

    LISTBUTTON 10015, "", 130, 139, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSal_id"
        SHORTCUE "The default sales department."
        LONGCUE "Choose the default sales department of this user"
    END

    STATICTEXT 10014, "Sa&les department", 13, 141, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSalesdDep"
    END

    STATICTEXT 10008, "&Branch", 13, 119, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBranchId"
    END

    STATICTEXT 10034, "Case number", 13, 212, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCase_number"
    END

    INPUTE 10035, "", 130, 210, 100, 19
    BEGIN
        MASK  "UUUUUUUUUU"
        PADCHARACTER 0
        MAXLENGTH 10
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Case_nr"
        CLIENTEDGE
        SHORTCUE "Enter the case number for the defaults"
    END

    TOOLBUTTON 10036, "", 235, 210, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.bmp" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_case"
        SHORTCUE "Search for a case"
    END

    STATICTEXT 10031, "Import file stock &used", 13, 183, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImportFile1"
        INVISIBLE
    END

    INPUTE 10032, "", 130, 184, 330, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Idf_import_file_1"
        CLIENTEDGE
        INVISIBLE
        SHORTCUE "Location and name of file to import for stock used"
    END

    TOOLBUTTON 10033, "", 465, 183, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.bmp" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbn_SearchFile_1"
        INVISIBLE
        SHORTCUE "Search for import file"
        LONGCUE "Search for an import file"
    END

    GROUPBOX 10037, "", 5, 5, 490, 75
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo"
    END

    STATICTEXT 10038, "TAKE CARE: You should only use this program if you know what you are doing and should only be used to import  car stock from the Autosys system", 15, 20, 470, 50
    BEGIN
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtInfo "
    END

    STATICTEXT 10039, "(This case number will be used to set the defaults correct. It should be an empty case with only basic information.)", 13, 235, 470, 36
    BEGIN
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtInfo "
    END

    STATICTEXT 10040, "Make code various", 13, 161, 115, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMakeCode"
    END

    LISTBUTTON 10041, "", 130, 159, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMakeCode"
        SHORTCUE "The default make code for various makes"
    END
END

CHILD-WINDOW 101 0 0 360 19
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 0
    NAME "chd_wdwProgress"

    EDIT 100, "", 0, 0, 360, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
    END
END
