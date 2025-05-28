VERSION "4.0"

WINDOW 1 "Import of history of ADP USA" 5 84 379 250
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    NAME "FrmImportADPUsaHis"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 114, 222, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "OK"
        LONGCUE "Save changes and close the dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 199, 222, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Cancel"
        LONGCUE "Reject changes and close the dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 284, 222, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Help"
        LONGCUE "Open the Easy Car Connect Help system for further assistance"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 10000, "", 3, 6, 372, 180
    BEGIN
        NAME "gbxOrderinf"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10002, "&Import file", 10, 130, 90, 19
    BEGIN
        NAME "txtImportFile"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10003, "", 115, 128, 230, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Idf_import_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file to import"
        LONGCUE "Location and name of file to import"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 10004, "", 344, 128, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png"
        NAME "tbn_SearchFile"
        SHORTCUE "Search for import file"
        LONGCUE "Search for an import file"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10030, "Process status :", 9, 199, 100, 19
    BEGIN
        NAME "txtRecordCounter"
        FONT "Microsoft Sans Serif" 9
    END

    CHILD-WINDOW 101, 55, 114, 197
    BEGIN
        NAME "chd_frmProgress"
    END

    STATICTEXT 10006, "&Company ", 10, 20, 90, 19
    BEGIN
        NAME "txtCompany"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10007, "", 115, 18, 250, 380
    BEGIN
        NAME "lbnComp_Id"
        SHORTCUE "The default company."
        LONGCUE "Choose the default company of this user"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10009, "", 115, 40, 250, 380
    BEGIN
        NAME "lbnBranch_Id"
        SHORTCUE "The default branch."
        LONGCUE "Choose the default branch of this user"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10011, "", 115, 62, 250, 380
    BEGIN
        NAME "lbnWhs_id"
        SHORTCUE "The default warehouse."
        LONGCUE "Choose the default warehouse of this user"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10013, "", 115, 84, 250, 380
    BEGIN
        NAME "lbnWks_id"
        SHORTCUE "The default workshop."
        LONGCUE "Choose the default workshop of this user"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 10015, "", 115, 106, 250, 380
    BEGIN
        NAME "lbnSal_id"
        SHORTCUE "The default sales department."
        LONGCUE "Choose the default sales department of this user"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10014, "Sa&les department", 10, 108, 90, 19
    BEGIN
        NAME "txtSalesdDep"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10012, "Wor&kshop ", 10, 86, 90, 19
    BEGIN
        NAME "txtWorkshop"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10010, "W&arehouse", 10, 64, 90, 19
    BEGIN
        NAME "txtWarehouse"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10008, "&Branch", 10, 42, 90, 19
    BEGIN
        NAME "txtBranchId"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10031, "&VAT % parts", 10, 150, 90, 19
    BEGIN
        NAME "txtVATPerc"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTN 10032, "6.50", 115, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        NAME "Vat_Perc_1"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END
END

CHILD-WINDOW 101 0 0 250 19
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 0
    NAME "chd_wdwProgress"

    EDIT 100, "", 0, 0, 250, 19
    BEGIN
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
        FONT "Microsoft Sans Serif" 9
    END
END
