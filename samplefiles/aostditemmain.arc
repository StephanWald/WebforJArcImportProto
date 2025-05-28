VERSION "4.0"

WINDOW 1 "Standard Item Maintenance" 5 84 1260 700
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3284141580
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    RADIOGROUP 10102, 10103
    NAME "FrmStdItemMain"

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

    TOOLBUTTON 112, "", 1220, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 1190, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 114, "", 144, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        SHORTCUE "Open the details dialogue"
    END

    GROUPBOX 10100, "", 2, 24, 1255, 68
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    RADIOBUTTON 10102, "Own &make", 10, 44, 150, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnOwn"
    END

    RADIOBUTTON 10103, "&Other makes", 10, 64, 150, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnOther"
    END

    LISTBUTTON 10105, "", 160, 44, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnMake"
        SHORTCUE "Choose the make for the standard items"
    END

    CHILD-WINDOW 101, 51, 10, 120
    BEGIN
        NAME "chd_wdwStdItem" 
    END

    CHILD-WINDOW 102, 52, 10, 120
    BEGIN
        NAME "chd_wdwModelCarType" 
    END

    TABCONTROL 10110, "TclAoStdItem", 5, 95, 1250, 600
    BEGIN
        AUTOMANAGEMENT
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "TclAoStdItem"
        TAB "Standard items" 0 51
        TAB "Models/ car types" 0 52
    END

    STATICTEXT 10111, "Standard item : ", 500, 46, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStdItem"
    END

    CUSTOMEDIT 10112, "", 630, 44, 505, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "stdItemDescr"
        CLIENTEDGE
    END
END

WINDOW 2 "Standard Item Details" 165 90 440 445
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141572
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmStdItemDetails"

    BUTTON 1, "OK", 100, 415, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 185, 415, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    BUTTON 3, "&Edit", 270, 415, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
    END

    BUTTON 4, "&Help", 355, 415, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 12000, "Item ID :", 15, 10, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtID"
    END

    CUSTOMEDIT 12001, "", 145, 8, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Asi_id"
        CLIENTEDGE
    END

    GROUPBOX 12004, "", 5, 30, 430, 160
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo"
    END

    STATICTEXT 12006, "&Description", 15, 52, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDescr"
    END

    INPUTE 12007, "", 145, 50, 275, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 70
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Si_descr"
        CLIENTEDGE
        SHORTCUE "Enter the description of the standard item"
    END

    STATICTEXT 12008, "&New/Used/All", 15, 72, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtNewUsedAll"
    END

    STATICTEXT 12010, "&Pricing type", 15, 93, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType"
    END

    STATICTEXT 12013, "&Integration code", 15, 114, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinIntCode"
    END

    STATICTEXT 12015, "&VAT code", 15, 135, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVATCode"
    END

    GROUPBOX 12020, "Current prices", 5, 196, 430, 92
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxCurrentPrices"
    END

    STATICTEXT 12022, "&Purchase price", 15, 218, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPurPrice"
    END

    STATICTEXT 12024, "Sales price &excl. VAT", 15, 238, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSalesPriceEx"
    END

    STATICTEXT 12026, "Sales price &incl. VAT", 15, 258, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSal_price10"
    END

    INPUTN 12023, "", 145, 216, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_pur_pri"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the pruchase price"
    END

    INPUTN 12025, "", 145, 236, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_sal_pri_ex"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter an alternative sales price"
    END

    INPUTN 12027, "", 145, 256, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_sal_pri_in"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter an alternative sales price"
    END

    GROUPBOX 12040, "Future prices", 5, 292, 430, 112
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxFuturePrices"
    END

    STATICTEXT 12042, "Date new pri&ces", 15, 314, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPricesFrom"
    END

    INPUTE 12043, "", 145, 312, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_price_date"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the posting date"
    END

    STATICTEXT 12046, "&Purchase price", 15, 334, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPurPrice"
    END

    INPUTN 12047, "", 145, 332, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_n_pur_pri"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the pruchase price valid from price date"
    END

    STATICTEXT 12048, "Sales price &excl. VAT", 15, 354, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSalesPriceEx"
    END

    INPUTN 12049, "", 145, 352, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_n_sal_pri_ex"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the sales price excl. VAT"
    END

    STATICTEXT 12050, "Sales price &incl. VAT", 15, 374, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSalesPriceEx"
    END

    INPUTN 12051, "", 145, 372, 100, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Asi_n_sal_pri_in"
        CLIENTEDGE
        DISABLED
        SHORTCUE "Enter the sales price incl. VAT"
    END

    LISTBUTTON 12009, "", 145, 70, 100, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnNewUsedAll"
    END

    LISTBUTTON 12011, "", 145, 91, 200, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPricingType"
    END

    LISTBUTTON 12012, "", 145, 112, 200, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinIntCode"
    END

    LISTBUTTON 12014, "", 145, 133, 200, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnVATCode"
    END

    STATICTEXT 12016, "&Source code", 15, 155, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSourceCode"
    END

    LISTBUTTON 12017, "", 145, 153, 200, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSourceCode"
    END
END

CHILD-WINDOW 101 0 0 1242 573
BEGIN
    BORDERLESS
    EVENTMASK 2163213316
    NAME "chd_wdwStdItem"

    GRID 11001, "", 0, 0, 1238, 573
    BEGIN
        ROWS 100
        COLUMNHEAD 20, 11002
        COLUMNS 10
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 70
        GRIDCOLTITLE 0, "ID"
        GRIDCOLWIDTH 1, 225
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "New/Used/All"
        GRIDCOLWIDTH 3, 170
        GRIDCOLTITLE 3, "Pricing type"
        GRIDCOLWIDTH 4, 120
        GRIDCOLTITLE 4, "Fin. integration code"
        GRIDCOLWIDTH 5, 120
        GRIDCOLTITLE 5, "VAT code"
        GRIDCOLWIDTH 6, 100
        GRIDCOLTITLE 6, "Purchase price"
        GRIDCOLWIDTH 7, 100
        GRIDCOLTITLE 7, "Sales price"
        GRIDCOLWIDTH 8, 100
        GRIDCOLTITLE 8, "Sales price incl."
        GRIDCOLWIDTH 9, 110
        GRIDCOLTITLE 9, "Source code"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclAddon"
        CLIENTEDGE
    END

    LISTBUTTON 11006, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinIntCode"
    END

    LISTBUTTON 11007, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnVatCode"
    END

    LISTBUTTON 11008, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnNewUsedAll"
    END

    LISTBUTTON 11009, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPricingType"
    END

    LISTBUTTON 11010, "", -800, -800, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSourceCode"
    END
END

CHILD-WINDOW 102 0 0 1242 573
BEGIN
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwModelCarType"

    GRID 10201, "", 0, 0, 1238, 573
    BEGIN
        ROWS 1000
        COLUMNHEAD 20, 10202
        COLUMNS 9
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 20
        GRIDCOLTITLE 0, "S"
        GRIDCOLWIDTH 1, 320
        GRIDCOLTITLE 1, "Models / Cartypes"
        GRIDCOLWIDTH 2, 125
        GRIDCOLTITLE 2, "Purchase price"
        GRIDCOLWIDTH 3, 125
        GRIDCOLTITLE 3, "Sales price"
        GRIDCOLWIDTH 4, 125
        GRIDCOLTITLE 4, "Sales price incl."
        GRIDCOLWIDTH 5, 125
        GRIDCOLTITLE 5, "Date new prices"
        GRIDCOLWIDTH 6, 125
        GRIDCOLTITLE 6, "New purchase price"
        GRIDCOLWIDTH 7, 125
        GRIDCOLTITLE 7, "New sales price"
        GRIDCOLWIDTH 8, 125
        GRIDCOLTITLE 8, "New sales price incl."
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclModelCartype"
        CLIENTEDGE
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
        MENU-ITEM 30301 "&Search\tF8" 338
        BEGIN
            NAME "menSearch"
        END
        MENU-ITEM 30302 "&Print\tF9" 339
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
