VERSION "4.0"

WINDOW 1 "Import of Car Sales History of AutoSys" 5 84 379 250
BEGIN
    ICON "Ecc_ico.png"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmImportCarSalesAutoSysHis"

    BUTTON 1, "OK", 114, 222, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "OK"
        LONGCUE "Save changes and close the dialogue"
    END

    BUTTON 2, "Cancel", 199, 222, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel"
        LONGCUE "Reject changes and close the dialogue"
    END

    BUTTON 3, "&Help", 284, 222, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Help"
        LONGCUE "Open the Easy Car Connect Help system for further assistance"
    END

    GROUPBOX 10000, "", 3, 6, 372, 180
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    STATICTEXT 10002, "&Import file", 10, 130, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtImportFile"
    END

    INPUTE 10003, "", 115, 128, 230, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Idf_import_file"
        CLIENTEDGE
        SHORTCUE "Location and name of file to import"
        LONGCUE "Location and name of file to import"
    END

    TOOLBUTTON 10004, "", 344, 128, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbn_SearchFile"
        SHORTCUE "Search for import file"
        LONGCUE "Search for an import file"
    END

    STATICTEXT 10030, "Process status :", 9, 199, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRecordCounter"
    END

    CHILD-WINDOW 101, 55, 114, 197
    BEGIN
        NAME "chd_frmProgress" 
    END

    STATICTEXT 10006, "&Company ", 10, 20, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCompany"
    END

    LISTBUTTON 10007, "", 115, 18, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnComp_Id"
        SHORTCUE "The default company."
        LONGCUE "Choose the default company of this user"
    END

    LISTBUTTON 10009, "", 115, 40, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnBranch_Id"
        SHORTCUE "The default branch."
        LONGCUE "Choose the default branch of this user"
    END

    LISTBUTTON 10011, "", 115, 62, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWhs_id"
        SHORTCUE "The default warehouse."
        LONGCUE "Choose the default warehouse of this user"
    END

    LISTBUTTON 10013, "", 115, 84, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWks_id"
        SHORTCUE "The default workshop."
        LONGCUE "Choose the default workshop of this user"
    END

    LISTBUTTON 10015, "", 115, 106, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSal_id"
        SHORTCUE "The default sales department."
        LONGCUE "Choose the default sales department of this user"
    END

    STATICTEXT 10014, "Sa&les department", 10, 108, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSalesdDep"
    END

    STATICTEXT 10012, "Wor&kshop ", 10, 86, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWorkshop"
    END

    STATICTEXT 10010, "W&arehouse", 10, 64, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWarehouse"
    END

    STATICTEXT 10008, "&Branch", 10, 42, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBranchId"
    END

    STATICTEXT 10031, "&VAT % codes 0-4", 10, 150, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVATPerc"
    END

    INPUTN 10032, "0.00", 115, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vat_Perc_1"
        CLIENTEDGE
    END

    INPUTN 10033, "0.00", 160, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vat_Perc_2"
        CLIENTEDGE
    END

    INPUTN 10034, "0.00", 205, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vat_Perc_3"
        CLIENTEDGE
    END

    INPUTN 10035, "0.00", 250, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vat_Perc_4"
        CLIENTEDGE
    END

    INPUTN 10036, "0.00", 295, 148, 40, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Vat_Perc_5"
        CLIENTEDGE
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
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Progress"
        CLIENTEDGE
        DISABLED
        INVISIBLE
    END
END
