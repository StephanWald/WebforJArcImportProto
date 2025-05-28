VERSION "4.0"

WINDOW 1 "Backorder Maintenance" 5 85 1280 785
BEGIN
    MENUBAR 101
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    ENTERASTAB
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3284141580
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    RADIOGROUP 11012, 11013
    RADIOGROUP 11024, 11025
    NAME "frmBackorderMain"

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

    TOOLBUTTON 111, "", 145, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar012.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch"
        DISABLED
        SHORTCUE "Open the search dialogue"
    END

    TOOLBUTTON 112, "", 1240, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 113, "", 1210, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar013.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnPrint"
        DISABLED
        SHORTCUE "Open the print dialogue"
    END

    TOOLBUTTON 114, "", 179, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        DISABLED
        SHORTCUE "Open the details dialogue"
    END

    TOOLBUTTON 115, "", 213, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar015.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnCopy"
        DISABLED
        SHORTCUE "Copy reorder number"
    END

    TOOLBUTTON 116, "", 247, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar027.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnRefresh"
        SHORTCUE "Refresh the form"
    END

    TOOLBUTTON 117, "", 281, 5, 24, 24
    BEGIN
        IMAGEFILE "Butfrm019.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSpreadsheet"
        SHORTCUE "Open spreadsheet program with grid information"
    END

    GROUPBOX 1000, "", 0, 24, 1280, 8
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxHeader"
    END

    GRID 11001, "Grid", 5, 100, 1268, 642
    BEGIN
        ROWS 3000
        COLUMNHEAD 25, 11002
        COLUMNS 13
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Part number"
        GRIDCOLWIDTH 1, 150
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 125
        GRIDCOLTITLE 2, "Supplier"
        GRIDCOLWIDTH 3, 125
        GRIDCOLTITLE 3, "Customer"
        GRIDCOLWIDTH 4, 90
        GRIDCOLTITLE 4, "Order number"
        GRIDCOLWIDTH 5, 90
        GRIDCOLTITLE 5, "Creation date"
        GRIDCOLWIDTH 6, 90
        GRIDCOLTITLE 6, "Reorder type"
        GRIDCOLWIDTH 7, 90
        GRIDCOLTITLE 7, "Reorder no."
        GRIDCOLWIDTH 8, 75
        GRIDCOLTITLE 8, "Back. qty"
        GRIDCOLWIDTH 9, 75
        GRIDCOLTITLE 9, "Qty to post"
        GRIDCOLWIDTH 10, 125
        GRIDCOLTITLE 10, "State"
        GRIDCOLWIDTH 11, 110
        GRIDCOLTITLE 11, "External status"
        GRIDCOLWIDTH 12, 250
        GRIDCOLTITLE 12, "Receptionist"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclBackorder"
        CLIENTEDGE
    END

    BUTTON 11020, "&Create reorders", 905, 750, 110, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCreateReorders"
        SHORTCUE "Create reorders"
    END

    BUTTON 11021, "&Allocate all lines", 1025, 750, 110, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnAllocateBo"
        SHORTCUE "Allocate all backorders in the grid"
    END

    RADIOBUTTON 11012, "&All warehouses", 8, 45, 117, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnWarehouse_1"
        SHORTCUE "Select all warehouses"
    END

    RADIOBUTTON 11013, "&Warehouse", 8, 65, 117, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnWarehouse_2"
        SHORTCUE "Select specific warehouse"
    END

    LISTBUTTON 11014, "", 125, 65, 200, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWarehouses"
        SHORTCUE "Choose warehouse to use"
    END

    CHILD-WINDOW 101, 51, 5, 100
    BEGIN
        NAME "chd_frmgclBackorder" 
    END

    BUTTON 11022, "&Allocate this line", 1145, 750, 110, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnAllocateLine"
        DISABLED
        SHORTCUE "Allocate only backorder of selected line in the grid"
    END

    CHECKBOX 11023, "Don't show completely posted ", 5, 750, 868, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbxComplPosted"
    END

    RADIOBUTTON 11024, "A&ll suppliers", 360, 45, 125, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnSupplierAll"
        SHORTCUE "Select all suppliers"
    END

    RADIOBUTTON 11025, "&Supplier", 360, 65, 125, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnSupplier"
        SHORTCUE "Select specific supplier"
    END

    LISTBUTTON 11026, "", 490, 65, 250, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnSuppliers"
        SHORTCUE "Choose supplier to use"
    END
END

WINDOW 2 "Backorder Details" 100 100 865 515
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3824158668
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmBackorderMainDetails"

    STATICTEXT 2012, "Part number :", 15, 88, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPartno"
    END

    STATICTEXT 2018, "Supplier ", 15, 108, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtSupplier"
    END

    STATICTEXT 2024, "Customer :", 15, 128, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCustomer"
    END

    STATICTEXT 2030, "Order number :", 15, 148, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrderNo"
    END

    CUSTOMEDIT 2013, "", 125, 86, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Partnr"
        CLIENTEDGE
    END

    CUSTOMEDIT 2025, "", 125, 126, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_nr"
        CLIENTEDGE
    END

    CUSTOMEDIT 2031, "", 125, 146, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Ord_nr"
        CLIENTEDGE
    END

    CUSTOMEDIT 2014, "", 275, 86, 220, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pa_descr_1"
        CLIENTEDGE
    END

    CUSTOMEDIT 2020, "", 275, 106, 220, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Sp_name"
        CLIENTEDGE
    END

    CUSTOMEDIT 2026, "", 275, 126, 220, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Cu_name"
        CLIENTEDGE
    END

    CUSTOMEDIT 2032, "", 275, 146, 220, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Ordt_descr"
        CLIENTEDGE
    END

    STATICTEXT 2040, "Creation date :", 15, 168, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCreateDate"
    END

    CUSTOMEDIT 2041, "", 125, 166, 90, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bo_cre_date"
        CLIENTEDGE
    END

    STATICTEXT 2208, "Stock qty. :", 527, 248, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPa_Stock_qty"
    END

    STATICTEXT 2214, "Reorder qty. :", 527, 268, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txt_Reord_qty"
    END

    STATICTEXT 2220, "Backorder qty. :", 527, 288, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txt_Pa_Bo_qty"
    END

    STATICTEXT 2226, "Reserved qty. :", 527, 309, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPa_Ord_rec_qty"
    END

    STATICTEXT 2202, "Total", 637, 228, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTotal"
    END

    STATICTEXT 2203, "Warehouse", 747, 228, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWarehouse"
    END

    STATICTEXT 2210, "", 637, 248, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pa_Stock_qty"
        CLIENTEDGE
    END

    STATICTEXT 2216, "", 637, 268, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pa_Reord_qty"
        CLIENTEDGE
    END

    STATICTEXT 2222, "", 637, 288, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pa_Bo_qty"
        CLIENTEDGE
    END

    STATICTEXT 2228, "", 637, 308, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pa_Ord_res_qty"
        CLIENTEDGE
    END

    STATICTEXT 2218, "", 747, 268, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Wh_Reord_qty"
        CLIENTEDGE
    END

    STATICTEXT 2224, "", 747, 288, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Wh_Bo_qty"
        CLIENTEDGE
    END

    STATICTEXT 2230, "", 747, 308, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Wh_Ord_res_qty"
        CLIENTEDGE
    END

    STATICTEXT 2212, "", 747, 248, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Wh_Stock_qty"
        CLIENTEDGE
    END

    GROUPBOX 2200, "Part information", 510, 208, 350, 130
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPartInfo"
    END

    GROUPBOX 2000, "Basic information", 5, 8, 500, 190
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclBasicInfo"
    END

    STATICTEXT 2088, "&Backorder qty", 15, 448, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtBoQty"
    END

    STATICTEXT 2090, "Already posted:", 275, 448, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAlreadyPosted"
    END

    STATICTEXT 2094, "To &post", 15, 468, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtToPost"
    END

    STATICTEXT 2070, "&State", 15, 350, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtState"
    END

    LISTBUTTON 2071, "", 150, 348, 200, 396
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnStatus"
        SHORTCUE "Choose the status of this information"
    END

    STATICTEXT 2074, "&Remarks", 15, 371, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtRemarks"
    END

    CUSTOMEDIT 2075, "", 150, 369, 340, 35
    BEGIN
        LIMIT 100
        IGNORETABS
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bo_remarks"
        CLIENTEDGE
        SHORTCUE "Enter remarks"
    END

    INPUTN 2089, "", 150, 446, 100, 19
    BEGIN
        MASK "#######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bo_qty"
        CLIENTEDGE
        SHORTCUE "Enter backorder quantity"
    END

    INPUTN 2095, " ", 150, 466, 100, 19
    BEGIN
        MASK "#######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Post_qty"
        CLIENTEDGE
        SHORTCUE "Enter backorder quantity to post"
    END

    BUTTON 1, "OK", 580, 485, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 650, 485, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes "
    END

    BUTTON 4, "&Help", 790, 485, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    BUTTON 3, "&Edit", 720, 485, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnEdit"
        SHORTCUE "Edit current item"
    END

    STATICTEXT 2078, "Reorder &type", 15, 407, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrd_type"
    END

    LISTBUTTON 2079, "", 150, 405, 200, 321
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnReorderType"
        SHORTCUE "Choose reorder type"
    END

    STATICTEXT 2082, "Reorder &number", 15, 428, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrd_nr"
    END

    INPUTE 2083, "", 150, 426, 100, 19
    BEGIN
        MASK  "UUUUUUUUUU"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Reh_ord_nr"
        CLIENTEDGE
        SHORTCUE "Enter reorder number "
    END

    TOOLBUTTON 2084, "", 255, 426, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbn_Search_Reorder"
        SHORTCUE "Search for a reorder"
    END

    STATICTEXT 2004, "Company :", 15, 28, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCompany"
    END

    STATICTEXT 2008, "Warehouse :", 15, 48, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWarehouse"
    END

    CUSTOMEDIT 2003, "", 125, 26, 225, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Comp_name"
        CLIENTEDGE
    END

    CUSTOMEDIT 2009, "", 125, 46, 225, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Whs_name"
        CLIENTEDGE
    END

    STATICTEXT 2010, "Ordered part number :", 15, 68, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPartnoOrd"
    END

    TOOLBUTTON 2085, "", 281, 426, 19, 19
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbn_New_Reorder"
        SHORTCUE "Create a new reorder"
    END

    GROUPBOX 2050, "Pre-payment", 5, 208, 500, 130
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclPrePayment"
    END

    STATICTEXT 2052, "Org. line amount excl.:", 15, 228, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrgAmount"
    END

    STATICTEXT 2053, "", 150, 228, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Org_line_amount"
        CLIENTEDGE
    END

    STATICTEXT 2054, "Amount to pay excl.:", 275, 228, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmntToPay"
    END

    STATICTEXT 2055, "", 400, 228, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Amnt_To_Pay"
        CLIENTEDGE
    END

    STATICTEXT 2056, "Org. amount &excl.", 15, 270, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmountExcl"
    END

    INPUTN 2057, "", 150, 268, 90, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Bo_pre_paym_org"
        CLIENTEDGE
        SHORTCUE "Enter original amount excl. VAT"
    END

    STATICTEXT 2058, "Open amount excl.:", 275, 268, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmountExcl"
    END

    STATICTEXT 2059, "", 400, 268, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bo_pre_paym_open"
        CLIENTEDGE
    END

    STATICTEXT 2062, "Org. amount &incl.", 15, 290, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmountIncl"
    END

    INPUTN 2063, "", 150, 288, 90, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Pre_paym_org_incl"
        CLIENTEDGE
        SHORTCUE "Enter original amount incl. VAT"
    END

    STATICTEXT 2064, "Open amount incl.:", 275, 288, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmountExcl"
    END

    STATICTEXT 2065, "", 400, 288, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Pre_paym_open_incl"
        CLIENTEDGE
    END

    STATICTEXT 2091, "", 400, 448, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Bo_posted_qty"
        CLIENTEDGE
    END

    STATICTEXT 2068, "Amount to pay incl.:", 275, 248, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtAmntToPayIncl"
    END

    STATICTEXT 2066, "Org. line amount incl.: ", 15, 248, 125, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtOrgAmountIncl"
    END

    STATICTEXT 2067, "", 150, 248, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Org_line_amount_incl"
        CLIENTEDGE
    END

    STATICTEXT 2069, "", 400, 248, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Amnt_To_Pay_Incl"
        CLIENTEDGE
    END

    CUSTOMEDIT 2011, "", 125, 66, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "PartnrOrd"
        CLIENTEDGE
    END

    INPUTE 2019, "", 125, 106, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Sp_nr"
        CLIENTEDGE
        SHORTCUE "Enter the number of the supplier"
    END

    TOOLBUTTON 2232, "", 230, 106, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnSearch_suppl"
        SHORTCUE "Search for a supplier"
    END

    STATICTEXT 2233, "Plan date :", 275, 168, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPlanDate"
    END

    STATICTEXT 2234, "", 400, 168, 90, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Woh_plan_date"
        CLIENTEDGE
    END

    STATICTEXT 2235, "External status : ", 527, 350, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtExtStatus"
    END

    CUSTOMEDIT 2236, "", 637, 348, 220, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Rep_ext_status"
        CLIENTEDGE
    END
END

WINDOW 3 "Print Back Orders" 100 100 330 344
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    RADIOGROUP 3028, 3032
    NAME "frmPrintBackOrders"

    STATICTEXT 3002, "&From part number", 15, 51, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPartnr_from"
    END

    STATICTEXT 3006, "&To part number", 15, 71, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPartnr_to"
    END

    BUTTON 1, "OK", 120, 312, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 190, 312, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
    END

    GROUPBOX 3020, "", 5, 179, 320, 118
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxPrintinf"
    END

    GROUPBOX 2990, "", 5, 8, 320, 156
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    BUTTON 3, "&Help", 260, 312, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    LISTBUTTON 3027, "", 135, 220, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnForm"
        DISABLED
        SHORTCUE "Choose form type "
    END

    STATICTEXT 3026, "T&ype of form", 15, 222, 84, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtForm"
    END

    RADIOBUTTON 3028, "&Print ", 15, 241, 100, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnPrint"
        SHORTCUE "Print range"
    END

    RADIOBUTTON 3032, "&View ", 15, 262, 100, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnView"
        SHORTCUE "View range"
    END

    LISTBUTTON 3034, "", 135, 262, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnViewDevice"
        INVISIBLE
        SHORTCUE "Choose viewing device"
    END

    LISTBUTTON 3030, "", 135, 241, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnPrintDevice"
        SHORTCUE "Choose printing device"
    END

    STATICTEXT 3010, "From &customer number", 15, 91, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCust_from"
    END

    STATICTEXT 3014, "To c&ustomer number", 15, 111, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCustnr_to"
    END

    STATICTEXT 3022, "&Kind of list", 15, 201, 99, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtKindofList"
    END

    LISTBUTTON 3023, "", 135, 199, 175, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnKindOfList"
        SHORTCUE "Choose list type"
    END

    STATICTEXT 3016, "List &date", 15, 131, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDate"
    END

    INPUTE 3017, "", 135, 129, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ine_Date"
        CLIENTEDGE
        SHORTCUE "Enter list date"
    END

    TOOLBUTTON 3035, "", 290, 49, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Tbn_Search_Part_From"
        SHORTCUE "Search for a part"
    END

    TOOLBUTTON 3036, "", 290, 69, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Tbn_Search_Part_To"
        SHORTCUE "Search for a part"
    END

    TOOLBUTTON 3037, "", 240, 89, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Tbn_Search_Cust_From"
        SHORTCUE "Search for a customer"
    END

    TOOLBUTTON 3038, "", 240, 109, 19, 19
    BEGIN
        IMAGEFILE "Butfrm001.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Tbn_Search_Cust_To"
        SHORTCUE "Search for a customer"
    END

    INPUTE 3003, "", 135, 49, 150, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 20
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "inePart_from"
        CLIENTEDGE
        SHORTCUE "Enter first part in the range"
    END

    INPUTE 3007, "", 135, 69, 150, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 20
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "inePart_to"
        CLIENTEDGE
        SHORTCUE "Enter last part in the range"
    END

    INPUTE 3011, "", 135, 89, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineCust_from"
        CLIENTEDGE
        SHORTCUE "Enter first customer in the range"
    END

    INPUTE 3015, "", 135, 109, 100, 19
    BEGIN
        PADCHARACTER 0
        MAXLENGTH 12
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineCust_to"
        CLIENTEDGE
        SHORTCUE "Enter last customer in the range"
    END

    LISTBUTTON 3001, "", 135, 28, 150, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnWarehouses"
        SHORTCUE "Choose warehouse"
    END

    STATICTEXT 3000, "&Warehouse", 15, 30, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtWarehouse"
    END
END

CHILD-WINDOW 101 0 0 1268 642
BEGIN
    BORDERLESS
    EVENTMASK 3824158660
    NAME "chd_wdwgclBackorder"

    GRID 11001, "Grid", 0, 0, 1268, 642
    BEGIN
        ROWS 3000
        COLUMNHEAD 25, 11002
        COLUMNS 14
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 100
        GRIDCOLTITLE 0, "Part number"
        GRIDCOLWIDTH 1, 135
        GRIDCOLTITLE 1, "Description"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Supplier"
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Customer"
        GRIDCOLWIDTH 4, 90
        GRIDCOLTITLE 4, "Order number"
        GRIDCOLWIDTH 5, 90
        GRIDCOLTITLE 5, "Plan date"
        GRIDCOLWIDTH 6, 90
        GRIDCOLTITLE 6, "Creation date"
        GRIDCOLWIDTH 7, 90
        GRIDCOLTITLE 7, "Reorder type"
        GRIDCOLWIDTH 8, 90
        GRIDCOLTITLE 8, "Reorder no."
        GRIDCOLWIDTH 9, 75
        GRIDCOLTITLE 9, "Back. qty"
        GRIDCOLWIDTH 10, 75
        GRIDCOLTITLE 10, "Qty to post"
        GRIDCOLWIDTH 11, 105
        GRIDCOLTITLE 11, "State"
        GRIDCOLWIDTH 12, 250
        GRIDCOLTITLE 12, "External status"
        GRIDCOLWIDTH 13, 225
        GRIDCOLTITLE 13, "Receptionist"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclBackorder"
        CLIENTEDGE
    END

    LISTBUTTON 11004, "", -100, -100, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnReorderType"
    END

    LISTBUTTON 11005, "", -100, -100, 90, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnStatus"
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
        MENU-ITEM 30399 "Pr&int screen\tCtrl+F12"
        BEGIN
            NAME "menPrintScreen"
        END
        SEPARATOR
        MENU-ITEM 30506 "&Details\tF10" 340
        BEGIN
            NAME "menDetails"
        END
        MENU-ITEM 30507 "&Copy reorder numbers\tCtrl+C" 8259
        BEGIN
            NAME "menCopy"
        END
        MENU-ITEM 30508 "&Refresh the form\tCtrl+F8" 8530
        BEGIN
            NAME "menRefresh"
        END
    END
    MENU-ITEM 30400 "&Windows"
    BEGIN
        NAME "menWindows"
        SEPARATOR
    END
    MENU-ITEM 30500 "&Help"
    BEGIN
        NAME "menHelp"
        MENU-ITEM 30501 "&Help Topics\tF1" 331
        BEGIN
            NAME "menHelp"
        END
        MENU-ITEM 30502 "&Reference Help\tCtrl+F1" 8523
        BEGIN
            NAME "menRefHelp"
        END
        SEPARATOR
        MENU-ITEM 30504 "&About Car IT DMS "
        BEGIN
            NAME "menAbout"
        END
    END
END
